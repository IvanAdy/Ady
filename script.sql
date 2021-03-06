USE [master]
GO
/****** Object:  Database [BD_INSEVA]    Script Date: 04/20/2018 12:48:20 ******/
CREATE DATABASE [BD_INSEVA] ON  PRIMARY 
( NAME = N'BD_INSEVA', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\BD_INSEVA.mdf' , SIZE = 3328KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'BD_INSEVA_log', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\BD_INSEVA_log.LDF' , SIZE = 832KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [BD_INSEVA] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BD_INSEVA].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BD_INSEVA] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [BD_INSEVA] SET ANSI_NULLS OFF
GO
ALTER DATABASE [BD_INSEVA] SET ANSI_PADDING OFF
GO
ALTER DATABASE [BD_INSEVA] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [BD_INSEVA] SET ARITHABORT OFF
GO
ALTER DATABASE [BD_INSEVA] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [BD_INSEVA] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [BD_INSEVA] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [BD_INSEVA] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [BD_INSEVA] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [BD_INSEVA] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [BD_INSEVA] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [BD_INSEVA] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [BD_INSEVA] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [BD_INSEVA] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [BD_INSEVA] SET  ENABLE_BROKER
GO
ALTER DATABASE [BD_INSEVA] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [BD_INSEVA] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [BD_INSEVA] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [BD_INSEVA] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [BD_INSEVA] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [BD_INSEVA] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [BD_INSEVA] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [BD_INSEVA] SET  READ_WRITE
GO
ALTER DATABASE [BD_INSEVA] SET RECOVERY FULL
GO
ALTER DATABASE [BD_INSEVA] SET  MULTI_USER
GO
ALTER DATABASE [BD_INSEVA] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [BD_INSEVA] SET DB_CHAINING OFF
GO
EXEC sys.sp_db_vardecimal_storage_format N'BD_INSEVA', N'ON'
GO
USE [BD_INSEVA]
GO
/****** Object:  Table [dbo].[MARCAS]    Script Date: 04/20/2018 12:48:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MARCAS](
	[MAR_Codigo] [int] IDENTITY(1,1) NOT NULL,
	[MAR_Descripcion] [varchar](50) NOT NULL,
	[MAR_Estado] [tinyint] NOT NULL,
 CONSTRAINT [PK__MARCAS__2E63369A9C319DAF] PRIMARY KEY CLUSTERED 
(
	[MAR_Codigo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LOCALES]    Script Date: 04/20/2018 12:48:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LOCALES](
	[LOC_Codigo] [int] IDENTITY(1,1) NOT NULL,
	[LOC_Nombre] [varchar](50) NOT NULL,
	[LOC_Estado] [tinyint] NOT NULL,
 CONSTRAINT [PK__LOCALES__110641927D46067D] PRIMARY KEY CLUSTERED 
(
	[LOC_Codigo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[COLORES]    Script Date: 04/20/2018 12:48:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[COLORES](
	[COL_Codigo] [int] IDENTITY(1,1) NOT NULL,
	[COL_Descripcion] [varchar](50) NOT NULL,
	[COL_Estado] [tinyint] NOT NULL,
 CONSTRAINT [PK__COLORES__DE8FA83E99A28262] PRIMARY KEY CLUSTERED 
(
	[COL_Codigo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CATEGORIAS]    Script Date: 04/20/2018 12:48:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CATEGORIAS](
	[CAT_Codigo] [int] IDENTITY(1,1) NOT NULL,
	[CAT_Descripcion] [varchar](50) NOT NULL,
	[CAT_Estado] [tinyint] NOT NULL,
 CONSTRAINT [PK__CATEGORI__4E4DC14ED2D7EBE4] PRIMARY KEY CLUSTERED 
(
	[CAT_Codigo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CARGOS]    Script Date: 04/20/2018 12:48:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CARGOS](
	[CAR_Codigo] [int] IDENTITY(1,1) NOT NULL,
	[CAR_Estado] [tinyint] NOT NULL,
	[CAR_Descripcion] [varchar](150) NULL,
 CONSTRAINT [PK__CARGOS__7C0ACB6B721EFD82] PRIMARY KEY CLUSTERED 
(
	[CAR_Codigo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PEDIDOS]    Script Date: 04/20/2018 12:48:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PEDIDOS](
	[PED_Codigo] [int] IDENTITY(1,1) NOT NULL,
	[PED_Numero] [int] NOT NULL,
	[PED_FechaPedido] [datetime] NOT NULL,
	[PED_FechaRegistro] [datetime] NOT NULL,
	[PED_Estado] [tinyint] NOT NULL,
	[USU_Codigo] [int] NOT NULL,
	[PED_Eliminado] [bit] NULL,
	[PED_FechaEliminado] [datetime] NULL,
 CONSTRAINT [PK__PEDIDOS__AD9A3E4F08FEFAC7] PRIMARY KEY CLUSTERED 
(
	[PED_Codigo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ROLES]    Script Date: 04/20/2018 12:48:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ROLES](
	[ROL_Codigo] [int] IDENTITY(1,1) NOT NULL,
	[ROL_Descripcion] [varchar](50) NOT NULL,
	[ROL_Estado] [tinyint] NOT NULL,
 CONSTRAINT [PK__ROLES__C1AF81F4C5E966EB] PRIMARY KEY CLUSTERED 
(
	[ROL_Codigo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PRESENTACION]    Script Date: 04/20/2018 12:48:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PRESENTACION](
	[PRE_Codigo] [int] IDENTITY(1,1) NOT NULL,
	[PRE_Descripcion] [varchar](50) NOT NULL,
	[PRE_Estado] [tinyint] NOT NULL,
 CONSTRAINT [PK__PRESENTA__5213C99B650D9691] PRIMARY KEY CLUSTERED 
(
	[PRE_Codigo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[sp_kardexdetalle_eliminar]    Script Date: 04/20/2018 12:48:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_kardexdetalle_eliminar]
	@codigo int,
	@msg varchar(250) out
AS
BEGIN
	SET NOCOUNT ON;
    Begin Tran Tadd
	begin try		
		DELETE FROM KAREX_DETALLE WHERE KD_Codigo = @codigo
		SET @msg = 'Articulo eliminado.'
		COMMIT TRAN Tadd
	end try
	begin catch
		SET @msg = 'Ocurrio un Error: ' + ERROR_MESSAGE() + ' en la línea ' + CONVERT(NVARCHAR(255), ERROR_LINE() ) + '.'
        Rollback TRAN Tadd
	end catch
END
GO
/****** Object:  StoredProcedure [dbo].[sp_PERSONAL_eliminar]    Script Date: 04/20/2018 12:48:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--ELIMINAR PERSONAL
CREATE PROCEDURE [dbo].[sp_PERSONAL_eliminar]
	@codigo int,
	@msg varchar(200) output
as
begin
	SET NOCOUNT ON;
    Begin Tran Tadd
	begin try
		if(EXISTS(SELECT * FROM ENTREGAS E WHERE DEP_Codigo = @codigo)) 
		begin
			SET @msg = 'Existen registros con esta dependencia.'
		end
		else
		begin
			DELETE FROM DEPENDENCIAS WHERE DEP_Codigo = @codigo
			SET @msg = 'Dependencia Eliminada.'
		end
		COMMIT TRAN Tadd
	end try
	begin catch
		SET @msg = 'Ocurrio un Error: ' + ERROR_MESSAGE() + ' en la línea ' + CONVERT(NVARCHAR(255), ERROR_LINE() ) + '.'
        Rollback TRAN Tadd
	end catch
end
GO
/****** Object:  Table [dbo].[UNIDAD_MEDIDA]    Script Date: 04/20/2018 12:48:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UNIDAD_MEDIDA](
	[UM_Codigo] [int] IDENTITY(1,1) NOT NULL,
	[UM_Descripcion] [varchar](50) NOT NULL,
	[UM_Estado] [tinyint] NOT NULL,
 CONSTRAINT [PK__UNIDAD_M__F6E6B9A6BB9FAC8B] PRIMARY KEY CLUSTERED 
(
	[UM_Codigo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TABLA_IMPRESIONES]    Script Date: 04/20/2018 12:48:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TABLA_IMPRESIONES](
	[Dato1] [varchar](100) NULL,
	[Dato2] [varchar](100) NULL,
	[Dato3] [varchar](100) NULL,
	[Dato4] [varchar](100) NULL,
	[Dato5] [varchar](100) NULL,
	[Dato6] [varchar](100) NULL,
	[Dato7] [varchar](100) NULL,
	[Dato8] [varchar](100) NULL,
	[Dato9] [varchar](100) NULL,
	[Dato10] [varchar](100) NULL,
	[Dato11] [varchar](100) NULL,
	[Dato12] [varchar](100) NULL,
	[Dato13] [varchar](100) NULL,
	[Dato14] [varchar](100) NULL,
	[Dato15] [varchar](100) NULL,
	[Dato16] [varchar](100) NULL,
	[Dato17] [varchar](100) NULL,
	[Dato18] [varchar](100) NULL,
	[Dato19] [varchar](100) NULL,
	[Dato20] [varchar](100) NULL,
	[Dato21] [varchar](100) NULL,
	[Dato22] [varchar](100) NULL,
	[Dato23] [varchar](100) NULL,
	[Dato24] [varchar](100) NULL,
	[Dato25] [varchar](100) NULL,
	[Dato26] [varchar](100) NULL,
	[Dato27] [varchar](100) NULL,
	[Dato28] [varchar](100) NULL,
	[Dato29] [varchar](100) NULL,
	[Dato30] [varchar](100) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[sp_verCodigoNumeroPedido]    Script Date: 04/20/2018 12:48:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_verCodigoNumeroPedido]
 @numero int
as
begin
	SELECT P.PED_Codigo from PEDIDOS P WHERE P.PED_Numero = @numero
end
GO
/****** Object:  StoredProcedure [dbo].[sp_unidades_listar_operativos]    Script Date: 04/20/2018 12:48:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--LOCAL LISTAR OPERATIVOS
create PROCEDURE [dbo].[sp_unidades_listar_operativos]	
as
BEGIN
	SELECT * FROM UNIDAD_MEDIDA WHERE UM_Estado=0	ORDER BY UM_Descripcion
END
GO
/****** Object:  StoredProcedure [dbo].[sp_roles_listar]    Script Date: 04/20/2018 12:48:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_roles_listar]
	@descripcion varchar(50)	
as
BEGIN
	SELECT R.*
	FROM ROLES R
	WHERE ROL_Descripcion LIKE '%'+@descripcion+'%'
	ORDER BY ROL_Descripcion
END
GO
/****** Object:  StoredProcedure [dbo].[sp_rol_modificar]    Script Date: 04/20/2018 12:48:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_rol_modificar]
				@codigo int,
				@descripcion varchar(50),
				@estado tinyint,	
				@msg varchar(200) output
			as
			begin
				SET NOCOUNT ON;
				Begin Tran Tadd
				begin try
					UPDATE ROLES SET ROL_Descripcion = @descripcion, ROL_Estado = @estado
					WHERE ROL_Codigo = @codigo
					SET @msg = 'Datos actualizados.'
					COMMIT TRAN Tadd
				end try
				begin catch
					SET @msg = 'Ocurrio un Error: ' + ERROR_MESSAGE() + ' en la línea ' + CONVERT(NVARCHAR(255), ERROR_LINE() ) + '.'
					Rollback TRAN Tadd
				end catch
			end
GO
/****** Object:  StoredProcedure [dbo].[sp_rol_listar]    Script Date: 04/20/2018 12:48:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_rol_listar]
	@nombre varchar(50)
as
begin
	SELECT * FROM ROLES WHERE ROL_Descripcion LIKE '%'+@nombre+'%' ORDER BY ROL_Descripcion
end
GO
/****** Object:  StoredProcedure [dbo].[sp_unidMed_modificar]    Script Date: 04/20/2018 12:48:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_unidMed_modificar]
	@codigo int,
	@nombre varchar(50),
	@estado tinyint,
	@msg varchar(200) output
as
begin
	SET NOCOUNT ON;
    Begin Tran Tadd
	begin try
		UPDATE UNIDAD_MEDIDA SET UM_Descripcion = @nombre, UM_Estado = @estado where UM_Codigo = @codigo
		SET @msg = 'Unidad de Medida Modificada.'
		COMMIT TRAN Tadd
	end try
	begin catch
		SET @msg = 'Ocurrio un Error: ' + ERROR_MESSAGE() + ' en la línea ' + CONVERT(NVARCHAR(255), ERROR_LINE() ) + '.'
        Rollback TRAN Tadd
	end catch
end



 -- ELIMINAR
GO
/****** Object:  StoredProcedure [dbo].[sp_unidMed_listar]    Script Date: 04/20/2018 12:48:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_unidMed_listar]
	@nombre varchar(50)
as
begin
	SELECT * FROM UNIDAD_MEDIDA WHERE UM_Descripcion LIKE '%'+@nombre+'%' ORDER BY UM_Descripcion
end

-- INSERTAR
GO
/****** Object:  StoredProcedure [dbo].[sp_unidMed_insertar]    Script Date: 04/20/2018 12:48:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_unidMed_insertar]
	@nombre varchar(50),
	@estado tinyint,
	@msg varchar(200) output
as
begin
	SET NOCOUNT ON;
    Begin Tran Tadd
	begin try
		INSERT INTO UNIDAD_MEDIDA(UM_Descripcion,UM_Estado) values(@nombre,@estado)
		SET @msg = 'Unidad de Medida Registrada.'
		COMMIT TRAN Tadd
	end try
	begin catch
		SET @msg = 'Ocurrio un Error: ' + ERROR_MESSAGE() + ' en la línea ' + CONVERT(NVARCHAR(255), ERROR_LINE() ) + '.'
        Rollback TRAN Tadd
	end catch
end


-- MODIFICAR
GO
/****** Object:  StoredProcedure [dbo].[sp_pedido_insertar]    Script Date: 04/20/2018 12:48:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_pedido_insertar]
	@numero int,
	@fechapedido datetime,
	@codigousuario int,
	@msg varchar(200) output
as
begin
	SET NOCOUNT ON;
    Begin Tran Tadd
	begin try
		INSERT INTO PEDIDOS(PED_Numero,PED_FechaPedido,PED_FechaRegistro,PED_Estado,USU_Codigo,PED_Eliminado) values(@numero,@fechapedido,GETDATE(),0,@codigousuario,0)
		SET @msg = 'Pedido Registrado.'
		COMMIT TRAN Tadd
	end try
	begin catch
		SET @msg = 'Ocurrio un Error: ' + ERROR_MESSAGE() + ' en la línea ' + CONVERT(NVARCHAR(255), ERROR_LINE() ) + '.'
        Rollback TRAN Tadd
	end catch
end
GO
/****** Object:  StoredProcedure [dbo].[sp_pedido_restaurar]    Script Date: 04/20/2018 12:48:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_pedido_restaurar]
	@codigo int,
	@msg varchar(250) out
AS
BEGIN
	SET NOCOUNT ON;
    Begin Tran Tadd
	begin try		
		update PEDIDOS SET PED_Eliminado = 0 WHERE PED_Codigo = @codigo
		SET @msg = 'Pedido restaurado.'
		COMMIT TRAN Tadd
	end try
	begin catch
		SET @msg = 'Ocurrio un Error: ' + ERROR_MESSAGE() + ' en la línea ' + CONVERT(NVARCHAR(255), ERROR_LINE() ) + '.'
        Rollback TRAN Tadd
	end catch
END
GO
/****** Object:  StoredProcedure [dbo].[sp_pedido_modificar]    Script Date: 04/20/2018 12:48:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_pedido_modificar]
	@codigo int,
	@numero int,
	@fechapedido datetime,
	@fecharegistro datetime,
	@estado tinyint,
	@codigousuario int,
	@msg varchar(200) output
as
begin
	SET NOCOUNT ON;
    Begin Tran Tadd
	begin try
		UPDATE PEDIDOS SET PED_Numero = @numero, PED_FechaPedido = @fechapedido,PED_FechaRegistro=@fecharegistro, PED_Estado = @estado,USU_Codigo=@codigousuario
		WHERE PED_Codigo = @codigo
		SET @msg = 'Datos actualizados.'
		COMMIT TRAN Tadd
	end try
	begin catch
		SET @msg = 'Ocurrio un Error: ' + ERROR_MESSAGE() + ' en la línea ' + CONVERT(NVARCHAR(255), ERROR_LINE() ) + '.'
        Rollback TRAN Tadd
	end catch
end
GO
/****** Object:  StoredProcedure [dbo].[sp_presentacion_modificar]    Script Date: 04/20/2018 12:48:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_presentacion_modificar]
	@codigo int,
	@nombre varchar(50),
	@estado tinyint,
	@msg varchar(200) output
as
begin
	SET NOCOUNT ON;
    Begin Tran Tadd
	begin try
		UPDATE PRESENTACION SET PRE_Descripcion = @nombre, PRE_Estado = @estado where PRE_Codigo = @codigo
		SET @msg = 'Presentación Modificada.'
		COMMIT TRAN Tadd
	end try
	begin catch
		SET @msg = 'Ocurrio un Error: ' + ERROR_MESSAGE() + ' en la línea ' + CONVERT(NVARCHAR(255), ERROR_LINE() ) + '.'
        Rollback TRAN Tadd
	end catch
end

--ELIMINAR
GO
/****** Object:  StoredProcedure [dbo].[sp_presentacion_listar_operativos]    Script Date: 04/20/2018 12:48:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--LOCAL LISTAR OPERATIVOS
create PROCEDURE [dbo].[sp_presentacion_listar_operativos]	
as
BEGIN
	SELECT * FROM PRESENTACION WHERE PRE_Estado=0	ORDER BY PRE_Descripcion 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_presentacion_listar]    Script Date: 04/20/2018 12:48:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_presentacion_listar]
	@nombre varchar(50)
as
begin
	SELECT * FROM PRESENTACION WHERE PRE_Descripcion LIKE '%'+@nombre+'%' ORDER BY PRE_Descripcion
end


--INSERTAR
GO
/****** Object:  StoredProcedure [dbo].[sp_presentacion_insertar]    Script Date: 04/20/2018 12:48:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_presentacion_insertar]
	@nombre varchar(50),
	@estado tinyint,
	@msg varchar(200) output
as
begin
	SET NOCOUNT ON;
    Begin Tran Tadd
	begin try
		INSERT INTO PRESENTACION(PRE_Descripcion,PRE_Estado) values(@nombre,@estado)
		SET @msg = 'Presentación Registrada.'
		COMMIT TRAN Tadd
	end try
	begin catch
		SET @msg = 'Ocurrio un Error: ' + ERROR_MESSAGE() + ' en la línea ' + CONVERT(NVARCHAR(255), ERROR_LINE() ) + '.'
        Rollback TRAN Tadd
	end catch
end

--MODIFICAR
GO
/****** Object:  StoredProcedure [dbo].[sp_impresiones_insertar]    Script Date: 04/20/2018 12:48:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--------------procedimientos almacenados-----------------------

CREATE PROCEDURE [dbo].[sp_impresiones_insertar]
 @Dato1 VARCHAR(100),
 @Dato2 VARCHAR(100),
 @Dato3 VARCHAR(100),
 @Dato4 VARCHAR(100),
 @Dato5 VARCHAR(100),
 @Dato6 VARCHAR(100),
 @Dato7 VARCHAR(100),
 @Dato8 VARCHAR(100),
 @Dato9 VARCHAR(100),
 @Dato10 VARCHAR(100),
 @Dato11 VARCHAR(100),
 @Dato12 VARCHAR(100),
 @Dato13 VARCHAR(100),
 @Dato14 VARCHAR(100),
 @Dato15 VARCHAR(100),
 @Dato16 VARCHAR(100),
 @Dato17 VARCHAR(100),
 @Dato18 VARCHAR(100),
 @Dato19 VARCHAR(100),
 @Dato20 VARCHAR(100),
 @Dato21 VARCHAR(100),
 @Dato22 VARCHAR(100),
 @Dato23 VARCHAR(100),
 @Dato24 VARCHAR(100),
 @Dato25 VARCHAR(100),
 @Dato26 VARCHAR(100),
 @Dato27 VARCHAR(100),
 @Dato28 VARCHAR(100),
 @Dato29 VARCHAR(100),
 @Dato30 VARCHAR(100)
as
begin
	INSERT INTO TABLA_IMPRESIONES(Dato1,Dato2,Dato3,Dato4,Dato5,Dato6,Dato7,Dato8,Dato9,Dato10,
	Dato11,Dato12,Dato13,Dato14,Dato15,Dato16,Dato17,Dato18,Dato19,Dato20,
	Dato21,Dato22,Dato23,Dato24,Dato25,Dato26,Dato27,Dato28,Dato29,Dato30)
	 
	VALUES(@Dato1,@Dato2,@Dato3,@Dato4,@Dato5,@Dato6,@Dato7,@Dato8,@Dato9,@Dato10,
	@Dato11,@Dato12,@Dato13,@Dato14,@Dato15,@Dato16,@Dato17,@Dato18,@Dato19,@Dato20,
	@Dato21,@Dato22,@Dato23,@Dato24,@Dato25,@Dato26,@Dato27,@Dato28,@Dato29,@Dato30)
end
GO
/****** Object:  StoredProcedure [dbo].[sp_impresiones_eliminar]    Script Date: 04/20/2018 12:48:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_impresiones_eliminar]
AS
begiN
	DELETE FROM TABLA_IMPRESIONES
END
GO
/****** Object:  StoredProcedure [dbo].[sp_local_modificar]    Script Date: 04/20/2018 12:48:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_local_modificar]
	@codigo int,
	@nombre varchar(50),
	@estado tinyint,
	@msg varchar(200) output
as
begin
	SET NOCOUNT ON;
    Begin Tran Tadd
	begin try
		UPDATE LOCALES SET LOC_Nombre = @nombre, LOC_Estado = @estado
		WHERE LOC_Codigo = @codigo
		SET @msg = 'Datos actualizados.'
		COMMIT TRAN Tadd
	end try
	begin catch
		SET @msg = 'Ocurrio un Error: ' + ERROR_MESSAGE() + ' en la línea ' + CONVERT(NVARCHAR(255), ERROR_LINE() ) + '.'
        Rollback TRAN Tadd
	end catch
end
GO
/****** Object:  StoredProcedure [dbo].[sp_local_listar_operativos]    Script Date: 04/20/2018 12:48:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--LOCAL LISTAR OPERATIVOS
create PROCEDURE [dbo].[sp_local_listar_operativos]	
as
BEGIN
	SELECT * FROM LOCALES WHERE LOC_Estado=0	ORDER BY LOC_Nombre
END
GO
/****** Object:  StoredProcedure [dbo].[sp_local_listar]    Script Date: 04/20/2018 12:48:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_local_listar]
	@nombre varchar(50)	
as
BEGIN
	SELECT L.LOC_Codigo, L.LOC_Nombre, L.LOC_Estado
	FROM LOCALES L
	WHERE LOC_Nombre LIKE '%'+@nombre+'%'
	ORDER BY L.LOC_Nombre
END
GO
/****** Object:  StoredProcedure [dbo].[sp_local_insertar]    Script Date: 04/20/2018 12:48:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_local_insertar]
	@nombre varchar(50),
	@estado tinyint,
	@msg varchar(200) output
as
begin
	SET NOCOUNT ON;
    Begin Tran Tadd
	begin try
		INSERT INTO LOCALES(LOC_Nombre,LOC_Estado) values(@nombre,@estado)
		SET @msg = 'Local Registrado.'
		COMMIT TRAN Tadd
	end try
	begin catch
		SET @msg = 'Ocurrio un Error: ' + ERROR_MESSAGE() + ' en la línea ' + CONVERT(NVARCHAR(255), ERROR_LINE() ) + '.'
        Rollback TRAN Tadd
	end catch
end
GO
/****** Object:  StoredProcedure [dbo].[sp_marca_modificar]    Script Date: 04/20/2018 12:48:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_marca_modificar]
	@codigo int,
	@descripcion varchar(50),
	@estado varchar(20),
	@msg varchar(250) out
AS
BEGIN
	SET NOCOUNT ON;
    Begin Tran Tadd
	begin try
		UPDATE MARCAS SET MAR_Descripcion = @descripcion, MAR_Estado = @estado WHERE MAR_Codigo = @codigo
		SET @msg = 'Datos actualizados.'
		COMMIT TRAN Tadd
	end try
	begin catch
		SET @msg = 'Ocurrio un Error: ' + ERROR_MESSAGE() + ' en la línea ' + CONVERT(NVARCHAR(255), ERROR_LINE() ) + '.'
        Rollback TRAN Tadd
	end catch
END
GO
/****** Object:  StoredProcedure [dbo].[sp_marca_listar_operativos]    Script Date: 04/20/2018 12:48:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_marca_listar_operativos]
as
BEGIN
	SELECT * FROM MARCAS WHERE MAR_Estado=0	ORDER BY MAR_Descripcion
END
GO
/****** Object:  StoredProcedure [dbo].[sp_marca_listar]    Script Date: 04/20/2018 12:48:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_marca_listar]
	@descripcion varchar(50)
AS
BEGIN
	SELECT M.* FROM MARCAS M WHERE M.MAR_Descripcion LIKE '%'+@descripcion+'%' order by M.MAR_Descripcion ASC
END
GO
/****** Object:  StoredProcedure [dbo].[sp_marca_insertar]    Script Date: 04/20/2018 12:48:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_marca_insertar]
	@descripcion varchar(50),
	@estado varchar(20),
	@msg varchar(250) out
AS
BEGIN
	SET NOCOUNT ON;
    Begin Tran Tadd
	begin try
		INSERT INTO MARCAS(MAR_Descripcion,MAR_Estado) values(@descripcion,@estado)
		SET @msg = 'Marca Registrada.'
		COMMIT TRAN Tadd
	end try
	begin catch
		SET @msg = 'Ocurrio un Error: ' + ERROR_MESSAGE() + ' en la línea ' + CONVERT(NVARCHAR(255), ERROR_LINE() ) + '.'
        Rollback TRAN Tadd
	end catch
END
GO
/****** Object:  StoredProcedure [dbo].[sp_pedido_eliminar]    Script Date: 04/20/2018 12:48:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_pedido_eliminar]
	@codigo int,
	@msg varchar(250) out
AS
BEGIN
	SET NOCOUNT ON;
    Begin Tran Tadd
	begin try		
		update PEDIDOS SET PED_Eliminado = 1, PED_FechaEliminado = GETDATE() WHERE PED_Codigo = @codigo
		SET @msg = 'Pedido eliminado.'
		COMMIT TRAN Tadd
	end try
	begin catch
		SET @msg = 'Ocurrio un Error: ' + ERROR_MESSAGE() + ' en la línea ' + CONVERT(NVARCHAR(255), ERROR_LINE() ) + '.'
        Rollback TRAN Tadd
	end catch
END
GO
/****** Object:  StoredProcedure [dbo].[sp_inventario_local_listar]    Script Date: 04/20/2018 12:48:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_inventario_local_listar]
	@nombre varchar(50)	
as
BEGIN
	SELECT L.LOC_Codigo, L.LOC_Nombre, L.LOC_Estado
	FROM LOCALES L 
	WHERE LOC_Nombre LIKE '%'+@nombre+'%' AND L.LOC_Estado = 0
	ORDER BY L.LOC_Nombre
END
GO
/****** Object:  StoredProcedure [dbo].[sp_cargo_modificar]    Script Date: 04/20/2018 12:48:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_cargo_modificar]
	@codigo int,
	@descripcion varchar(50),
	@estado tinyint,
	@msg varchar(200) output
as
begin
	SET NOCOUNT ON;
    Begin Tran Tadd
	begin try
		UPDATE CARGOS SET CAR_Descripcion = @descripcion, CAR_Estado = @estado
		WHERE CAR_Codigo = @codigo
		SET @msg = 'Datos actualizados.'
		COMMIT TRAN Tadd
	end try
	begin catch
		SET @msg = 'Ocurrio un Error: ' + ERROR_MESSAGE() + ' en la línea ' + CONVERT(NVARCHAR(255), ERROR_LINE() ) + '.'
        Rollback TRAN Tadd
	end catch
end
GO
/****** Object:  StoredProcedure [dbo].[sp_cargo_listar_operativos]    Script Date: 04/20/2018 12:48:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- CARGO LISTAR OPERATIVOS
create PROCEDURE [dbo].[sp_cargo_listar_operativos]
as
BEGIN
	SELECT * FROM CARGOS  where CAR_Estado=0
	ORDER BY CAR_Descripcion
END
GO
/****** Object:  StoredProcedure [dbo].[sp_cargo_listar]    Script Date: 04/20/2018 12:48:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_cargo_listar]
	@descripcion varchar(50)	
as
BEGIN
	SELECT C.CAR_Codigo, C.CAR_Descripcion,
	C.CAR_Estado
	FROM CARGOS C
	WHERE CAR_Descripcion LIKE '%'+@descripcion+'%'
	ORDER BY C.CAR_Descripcion
END
GO
/****** Object:  StoredProcedure [dbo].[sp_cargo_insertar]    Script Date: 04/20/2018 12:48:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_cargo_insertar]
	@descripcion varchar(50),
	@estado tinyint,
	@msg varchar(200) output
as
begin
	SET NOCOUNT ON;
    Begin Tran Tadd
	begin try
		INSERT INTO CARGOS(CAR_Descripcion,CAR_Estado) values(@descripcion,@estado)
		SET @msg = 'Cargo registrado.'
		COMMIT TRAN Tadd
	end try
	begin catch
		SET @msg = 'Ocurrio un Error: ' + ERROR_MESSAGE() + ' en la línea ' + CONVERT(NVARCHAR(255), ERROR_LINE() ) + '.'
        Rollback TRAN Tadd
	end catch
end
GO
/****** Object:  StoredProcedure [dbo].[sp_categoria_modificar]    Script Date: 04/20/2018 12:48:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
----------------------------
--MODIFICAR COLORES--------
----------------------------
CREATE PROCEDURE [dbo].[sp_categoria_modificar]
	@codigo int,
	@descripcion varchar(50),
	@estado tinyint,
	@msg varchar(200) output
as
begin
	SET NOCOUNT ON;
	Begin Tran Tadd
	begin try
		UPDATE CATEGORIAS SET CAT_Descripcion = @descripcion, CAT_Estado = @estado where CAT_Codigo = @codigo
		SET @msg = 'Categoría Modificado.'
		COMMIT TRAN Tadd
	end try
	begin catch
		SET @msg = 'Ocurrio un Error: ' + ERROR_MESSAGE() + 'en la linea' + CONVERT(NVARCHAR(255), ERROR_LINE() ) + '.'
		Rollback TRAN Tadd
	end catch
end
GO
/****** Object:  StoredProcedure [dbo].[sp_categoria_listar_operativos]    Script Date: 04/20/2018 12:48:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--LOCAL LISTAR OPERATIVOS
create PROCEDURE [dbo].[sp_categoria_listar_operativos]	
as
BEGIN
	SELECT * FROM CATEGORIAS WHERE CAT_Estado=0	ORDER BY CAT_Descripcion
END
GO
/****** Object:  StoredProcedure [dbo].[sp_categoria_listar]    Script Date: 04/20/2018 12:48:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
----------------------------------------
-----COLORES LISTA----------------------
----------------------------------------
create PROCEDURE [dbo].[sp_categoria_listar]
	@descripcion varchar(50)
as
begin
	SELECT * FROM CATEGORIAS WHERE CAT_Descripcion LIKE '%'+@descripcion+'%' ORDER BY CAT_Descripcion
end
GO
/****** Object:  StoredProcedure [dbo].[sp_categoria_insertar]    Script Date: 04/20/2018 12:48:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------
--INSERTAR COLORES NUEVOS
----------------------------
CREATE PROCEDURE [dbo].[sp_categoria_insertar]
	@descripcion varchar(50),
	@estado tinyint,
	@msg varchar(200) output
as
begin
	SET NOCOUNT ON;
	Begin tran tadd
	begin try
		INSERT INTO CATEGORIAS(CAT_Descripcion,CAT_Estado) Values(@descripcion,@estado)
		SET @msg = 'Categoría Registrada.'
		COMMIT TRAN Tadd
	end try
	begin catch
		SET @msg = 'Ocurrio un Error: ' + ERROR_MESSAGE() + 'en la linea' + CONVERT(nvarchar(255), ERROR_LINE() ) + '.'
		Rollback TRAN tadd
	end catch
end
GO
/****** Object:  StoredProcedure [dbo].[sp_colores_modificar]    Script Date: 04/20/2018 12:48:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
----------------------------
--MODIFICAR COLORES--------
----------------------------
CREATE PROCEDURE [dbo].[sp_colores_modificar]
	@codigo int,
	@descripcion varchar(50),
	@estado tinyint,
	@msg varchar(200) output
as
begin
	SET NOCOUNT ON;
	Begin Tran Tadd
	begin try
		UPDATE COLORES SET COL_Descripcion = @descripcion, COL_Estado = @estado where COL_Codigo = @codigo
		SET @msg = 'Color Modificado.'
		COMMIT TRAN Tadd
	end try
	begin catch
		SET @msg = 'Ocurrio un Error: ' + ERROR_MESSAGE() + 'en la linea' + CONVERT(NVARCHAR(255), ERROR_LINE() ) + '.'
		Rollback TRAN Tadd
	end catch
end
GO
/****** Object:  StoredProcedure [dbo].[sp_colores_listar_operativos]    Script Date: 04/20/2018 12:48:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--LOCAL LISTAR OPERATIVOS
create PROCEDURE [dbo].[sp_colores_listar_operativos]	
as
BEGIN
	SELECT * FROM COLORES WHERE COL_Estado=0	ORDER BY COL_Descripcion 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_colores_insertar]    Script Date: 04/20/2018 12:48:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------
--INSERTAR COLORES NUEVOS
----------------------------
CREATE PROCEDURE [dbo].[sp_colores_insertar]
	@descripcion varchar(50),
	@estado tinyint,
	@msg varchar(200) output
as
begin
	SET NOCOUNT ON;
	Begin tran tadd
	begin try
		INSERT INTO COLORES(COL_Descripcion,COL_Estado) Values(@descripcion,@estado)
		SET @msg = 'Color Registrado.'
		COMMIT TRAN Tadd
	end try
	begin catch
		SET @msg = 'Ocurrio un Error: ' + ERROR_MESSAGE() + 'en la linea' + CONVERT(nvarchar(255), ERROR_LINE() ) + '.'
		Rollback TRAN tadd
	end catch
end
GO
/****** Object:  StoredProcedure [dbo].[sp_color_listar]    Script Date: 04/20/2018 12:48:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
----------------------------------------
-----COLORES LISTA----------------------
----------------------------------------
CREATE PROCEDURE [dbo].[sp_color_listar]
	@descripcion varchar(50)
as
begin
	SELECT * FROM COLORES WHERE COL_Descripcion LIKE '%'+@descripcion+'%' ORDER BY COL_Descripcion
end
GO
/****** Object:  Table [dbo].[PERMISOS]    Script Date: 04/20/2018 12:48:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PERMISOS](
	[ROL_Codigo] [int] NOT NULL,
	[PRM_Codigo] [int] IDENTITY(1,1) NOT NULL,
	[PRM_Articulos] [bit] NOT NULL,
	[PRM_Pedidos] [bit] NOT NULL,
	[PRM_Autorizacion] [bit] NOT NULL,
	[PM_Entradas] [bit] NOT NULL,
	[PRM_Entregas] [bit] NOT NULL,
	[PRM_Otros] [bit] NOT NULL,
	[PRM_Ajustes] [bit] NOT NULL,
 CONSTRAINT [PK_PERMISO_ROL_PRIMARY_KEY] PRIMARY KEY CLUSTERED 
(
	[ROL_Codigo] ASC,
	[PRM_Codigo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PEDIDO_DETALLE]    Script Date: 04/20/2018 12:48:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PEDIDO_DETALLE](
	[PED_Codigo] [int] NOT NULL,
	[PD_Codigo] [int] IDENTITY(1,1) NOT NULL,
	[PD_Producto] [varchar](100) NOT NULL,
	[PD_Cntidad] [decimal](18, 2) NULL,
	[PD_Unidad] [varchar](20) NULL,
	[ART_Codigo] [int] NULL,
 CONSTRAINT [PK_PEDIDO_DETALLE_PRIMARY_KEY] PRIMARY KEY CLUSTERED 
(
	[PED_Codigo] ASC,
	[PD_Codigo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MODELOS]    Script Date: 04/20/2018 12:48:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MODELOS](
	[MOD_Codigo] [int] IDENTITY(1,1) NOT NULL,
	[MAR_Codigo] [int] NOT NULL,
	[MOD_Descripcion] [varchar](50) NOT NULL,
	[MOD_Estado] [tinyint] NOT NULL,
 CONSTRAINT [PK__MODELOS__E94E9CDE87C462C4] PRIMARY KEY CLUSTERED 
(
	[MOD_Codigo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[INVENTARIO]    Script Date: 04/20/2018 12:48:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[INVENTARIO](
	[INV_Codigo] [int] IDENTITY(1,1) NOT NULL,
	[LOC_Codigo] [int] NOT NULL,
	[INV_FechaInventario] [datetime] NOT NULL,
	[INV_FechaRegistro] [datetime] NOT NULL,
	[INV_JefeInmediato] [int] NULL,
	[USU_Codigo] [int] NOT NULL,
	[ARE_Codigo] [int] NOT NULL,
 CONSTRAINT [PK__INVENTAR__7252360DFEEABBA7] PRIMARY KEY CLUSTERED 
(
	[INV_Codigo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ARTICULO]    Script Date: 04/20/2018 12:48:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ARTICULO](
	[ART_Codigo] [int] IDENTITY(1,1) NOT NULL,
	[ART_CodigoInterno] [char](15) NOT NULL,
	[ART_Serie] [char](10) NOT NULL,
	[ART_Descripcion] [varchar](100) NOT NULL,
	[ART_Stock] [decimal](18, 2) NOT NULL,
	[MOD_Codigo] [int] NOT NULL,
	[CAT_Codigo] [int] NOT NULL,
	[UM_Codigo] [int] NOT NULL,
	[COL_Codigo] [int] NOT NULL,
	[PRE_Codigo] [int] NOT NULL,
	[ART_EstadoUso] [tinyint] NULL,
	[ART_Estado] [tinyint] NULL,
	[MAR_Codigo] [int] NULL,
	[ART_Ubicacion] [varchar](150) NULL,
	[ART_UbicaionNuevo] [varchar](150) NULL,
 CONSTRAINT [PK__ARTICULO__EE9C166653483185] PRIMARY KEY CLUSTERED 
(
	[ART_Codigo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AREAS]    Script Date: 04/20/2018 12:48:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AREAS](
	[ARE_Codigo] [int] IDENTITY(1,1) NOT NULL,
	[ARE_Descripcion] [varchar](50) NOT NULL,
	[ARE_Estado] [tinyint] NOT NULL,
	[LOC_Codigo] [int] NULL,
 CONSTRAINT [PK__AREAS__011188D5A8352C20] PRIMARY KEY CLUSTERED 
(
	[ARE_Codigo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KARDEX]    Script Date: 04/20/2018 12:48:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[KARDEX](
	[KAR_CODIGO] [int] IDENTITY(1,1) NOT NULL,
	[ART_Codigo] [int] NOT NULL,
	[KAR_Fecha] [datetime] NOT NULL,
	[KAR_Numero] [varchar](20) NOT NULL,
	[KAR_Entrada] [decimal](18, 0) NOT NULL,
	[KAR_Salida] [decimal](18, 0) NOT NULL,
	[KAR_Saldo] [decimal](18, 0) NOT NULL,
	[USU_Codigo] [decimal](18, 0) NOT NULL,
	[PER_Codigo] [decimal](18, 0) NOT NULL,
	[ENT_Codigo] [int] NULL,
	[ETG_Codig] [int] NULL,
	[KAR_ESTADO] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[KAR_CODIGO] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[INVENTARIO_DETALLE]    Script Date: 04/20/2018 12:48:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[INVENTARIO_DETALLE](
	[INV_Codigo] [int] NOT NULL,
	[ID_Codigo] [int] IDENTITY(1,1) NOT NULL,
	[ART_Codigo] [int] NOT NULL,
	[ID_EstadoConsolidado] [tinyint] NOT NULL,
	[ID_EstadoUso] [tinyint] NOT NULL,
	[ID_Etiquetado] [bit] NOT NULL,
	[ID_Observacion] [varchar](100) NULL,
	[ID_Dimension] [varchar](150) NULL,
 CONSTRAINT [PK_INVENTARIO_DETALLE_PRIMARY_KEY] PRIMARY KEY CLUSTERED 
(
	[INV_Codigo] ASC,
	[ID_Codigo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PERSONAL]    Script Date: 04/20/2018 12:48:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PERSONAL](
	[PER_Codigo] [int] IDENTITY(1,1) NOT NULL,
	[PER_ApePaterno] [varchar](50) NOT NULL,
	[PER_ApeMaterno] [varchar](50) NOT NULL,
	[PER_Nombres] [varchar](100) NOT NULL,
	[PER_Dni] [char](8) NOT NULL,
	[PER_Email] [varchar](50) NULL,
	[PER_Telefono] [varchar](20) NULL,
	[PER_Estado] [tinyint] NOT NULL,
	[PER_FechaRegistro] [datetime] NOT NULL,
	[PER_CondicionLaboral] [tinyint] NOT NULL,
	[ARE_Codigo] [int] NOT NULL,
	[CAR_Codigo] [int] NOT NULL,
 CONSTRAINT [PK__PERSONAL__E31A7355C5BE8F33] PRIMARY KEY CLUSTERED 
(
	[PER_Codigo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[sp_articulo_listar2]    Script Date: 04/20/2018 12:48:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_articulo_listar2]
	@descripcion varchar(100)
as
begin
	SELECT A.ART_Codigo, A.ART_CodigoInterno, A.ART_Descripcion,M.MAR_Descripcion ,MO.MOD_Descripcion,
	CA.CAT_Descripcion,
	UM.UM_Descripcion,
	A.ART_Stock, A.ART_Estado,
	A.CAT_Codigo, A.MOD_Codigo, A.UM_Codigo, A.COL_Codigo, A.PRE_Codigo, A.ART_EstadoUso, A.MAR_Codigo,
	A.ART_Ubicacion, A.ART_UbicaionNuevo
	FROM ARTICULO A 
	LEFT JOIN CATEGORIAS CA 
	ON CA.CAT_Codigo = A.CAT_Codigo
	LEFT JOIN UNIDAD_MEDIDA UM
	ON UM.UM_Codigo = A.UM_Codigo 
	LEFT join MODELOS MO 
	on A.MOD_Codigo=MO.MOD_Codigo
	 LEFT join MARCAS M on MO.MAR_Codigo=M.MAR_Codigo  
	WHERE A.ART_Descripcion LIKE '%'+@descripcion+'%'
	ORDER BY ART_Descripcion
end
GO
/****** Object:  StoredProcedure [dbo].[sp_articulo_listar_categoria]    Script Date: 04/20/2018 12:48:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_articulo_listar_categoria]
	@categoria int
as
begin
	SELECT A.ART_Codigo, A.ART_CodigoInterno, A.ART_Serie, A.ART_Descripcion,
	CA.CAT_Descripcion,
	UM.UM_Descripcion,
	A.ART_Stock, A.ART_Estado,
	A.CAT_Codigo, A.MOD_Codigo, A.UM_Codigo, A.COL_Codigo, A.PRE_Codigo, A.ART_EstadoUso, A.MAR_Codigo,
	A.ART_Ubicacion, A.ART_UbicaionNuevo
	FROM ARTICULO A 
	INNER JOIN CATEGORIAS CA 
	ON CA.CAT_Codigo = A.CAT_Codigo
	INNER JOIN UNIDAD_MEDIDA UM
	ON UM.UM_Codigo = A.UM_Codigo
	WHERE A.CAT_Codigo = @categoria
	ORDER BY ART_Descripcion
end
GO
/****** Object:  StoredProcedure [dbo].[sp_articulo_listar]    Script Date: 04/20/2018 12:48:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_articulo_listar]
	@descripcion varchar(100)
as
begin
	SELECT A.ART_Codigo, A.ART_CodigoInterno, A.ART_Serie, A.ART_Descripcion,
	CA.CAT_Descripcion,
	UM.UM_Descripcion,
	A.ART_Stock, A.ART_Estado,
	A.CAT_Codigo, A.MOD_Codigo, A.UM_Codigo, A.COL_Codigo, A.PRE_Codigo, A.ART_EstadoUso, A.MAR_Codigo,
	A.ART_Ubicacion	, A.ART_UbicaionNuevo
	FROM ARTICULO A 
	LEFT JOIN CATEGORIAS CA 
	ON CA.CAT_Codigo = A.CAT_Codigo
	LEFT JOIN UNIDAD_MEDIDA UM
	ON UM.UM_Codigo = A.UM_Codigo
	WHERE A.ART_Descripcion LIKE '%'+@descripcion+'%'
	ORDER BY a.ART_Descripcion
end
GO
/****** Object:  StoredProcedure [dbo].[sp_articulo_buscar_Codigo]    Script Date: 04/20/2018 12:48:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_articulo_buscar_Codigo]
	@Codigo varchar(100),
	@Pedido int
as
begin
	SELECT PD.PD_Cntidad,A.ART_Descripcion,A.ART_Codigo,A.ART_CodigoInterno,A.ART_Serie,M.MAR_Descripcion,MD.MOD_Descripcion,
			A.ART_Ubicacion, A.ART_UbicaionNuevo
	from ARTICULO A 
	INNER join MARCAS M on A.MAR_Codigo=M.MAR_Codigo
	INNER join MODELOS MD ON A.MOD_CODIGO=MD.MOD_CODIGO
	INNER JOIN PEDIDO_DETALLE PD ON A.ART_Codigo=PD.ART_Codigo
	INNER JOIN PEDIDOS PED ON PD.PED_Codigo=PED.PED_Codigo
	WHERE A.ART_Codigo LIKE @Codigo and PED.PED_Codigo like @Pedido
end
GO
/****** Object:  StoredProcedure [dbo].[sp_area_modificar]    Script Date: 04/20/2018 12:48:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_area_modificar]
	@codigo int,
	@descripcion varchar(50),
	@estado tinyint,
	@local int,
	@msg varchar(200) out
AS
BEGIN
	SET NOCOUNT ON;
    Begin Tran Tadd
	begin try
		UPDATE AREAS SET ARE_Descripcion = @descripcion, ARE_Estado = @estado, LOC_Codigo=@local WHERE ARE_Codigo = @codigo
		SET @msg = 'Datos actualizados.'
		COMMIT TRAN Tadd
	end try
	begin catch
		SET @msg = 'Ocurrio un Error: ' + ERROR_MESSAGE() + ' en la línea ' + CONVERT(NVARCHAR(255), ERROR_LINE() ) + '.'
        Rollback TRAN Tadd
	end catch
END
GO
/****** Object:  StoredProcedure [dbo].[sp_area_listar_Operativo]    Script Date: 04/20/2018 12:48:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_area_listar_Operativo]
@descripcion varchar(50)
AS
BEGIN
		SELECT A.ARE_Codigo,(l.LOC_Nombre+' - '+a.ARE_Descripcion)AS AREAS,a.ARE_Estado FROM AREAS A inner join LOCALES L on a.LOC_Codigo=l.LOC_Codigo
		where a.ARE_Estado=0 AND a.ARE_Descripcion LIKE '%'+@descripcion+'%'
		order by L.LOC_Nombre ASC

END
GO
/****** Object:  StoredProcedure [dbo].[sp_area_listar_1]    Script Date: 04/20/2018 12:48:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_area_listar_1]
	@descripcion varchar(50)
AS
BEGIN
	
		SELECT A.ARE_Codigo,a.ARE_Descripcion 
		FROM AREAS A 
		WHERE A.ARE_Descripcion LIKE '%'+@descripcion+'%' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_area_listar]    Script Date: 04/20/2018 12:48:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_area_listar]
	@descripcion varchar(50),
	@local int
AS
BEGIN
	IF(@local=0)
	BEGIN
		SELECT A.ARE_Codigo,a.ARE_Descripcion,l.LOC_Nombre,a.ARE_Estado FROM AREAS A inner join LOCALES L on a.LOC_Codigo=l.LOC_Codigo 
		WHERE A.ARE_Descripcion LIKE '%'+@descripcion+'%' OR L.LOC_Codigo=0 order by A.ARE_Descripcion ASC
	END
	ELSE
	BEGIN
		SELECT A.ARE_Codigo,a.ARE_Descripcion,l.LOC_Nombre,a.ARE_Estado FROM AREAS A inner join LOCALES L on a.LOC_Codigo=l.LOC_Codigo 
		WHERE A.ARE_Descripcion LIKE '%'+@descripcion+'%' AND L.LOC_Codigo=@local order by A.ARE_Descripcion ASC
	END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_area_insertar]    Script Date: 04/20/2018 12:48:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_area_insertar]
	@descripcion varchar(50),
	@estado tinyint,
	@local int,
	@msg varchar(200) output
AS
BEGIN
	SET NOCOUNT ON;
    Begin Tran Tadd
	begin try
		INSERT INTO AREAS(ARE_Descripcion,ARE_Estado,LOC_Codigo) values(@descripcion,@estado,@local)
		SET @msg = 'Area Registrada.'
		COMMIT TRAN Tadd
	end try
	begin catch
		SET @msg = 'Ocurrio un Error: ' + ERROR_MESSAGE() + ' en la línea ' + CONVERT(NVARCHAR(255), ERROR_LINE() ) + '.'
        Rollback TRAN Tadd
	end catch
END
GO
/****** Object:  StoredProcedure [dbo].[sp_color_eliminar]    Script Date: 04/20/2018 12:48:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
----------------------------------------
---ELIMINAR COLORES---------------------
----------------------------------------
CREATE PROCEDURE [dbo].[sp_color_eliminar]
	@codigo int,
	@msg varchar(200) output
as
begin 
	SET NOCOUNT ON;
	Begin tran Tadd
	begin try
		if(EXISTS(SELECT * FROM ARTICULO A WHERE COL_Codigo = @codigo))
		begin
			SET @msg = 'Existen registros con este color.'
		end
		else
		begin
			DELETE FROM COLORES WHERE COL_Codigo = @codigo
			SET @msg = 'Color Eliminado.'
		end
		COMMIT TRAN Tadd
	end try
	begin catch
		SET @msg = 'Ocurrio un Error: ' + ERROR_MESSAGE() + 'en la linea ' + CONVERT(NVARCHAR(255), ERROR_LINE() ) + '.'
		Rollback TRAN Tadd
	end catch
end
GO
/****** Object:  StoredProcedure [dbo].[sp_categoria_eliminar]    Script Date: 04/20/2018 12:48:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
----------------------------------------
---ELIMINAR COLORES---------------------
----------------------------------------
CREATE PROCEDURE [dbo].[sp_categoria_eliminar]
	@codigo int,
	@msg varchar(200) output
as
begin 
	SET NOCOUNT ON;
	Begin tran Tadd
	begin try
		if(EXISTS(SELECT * FROM ARTICULO A WHERE COL_Codigo = @codigo))
		begin
			SET @msg = 'Existen registros con esta categoría.'
		end
		else
		begin
			DELETE FROM CATEGORIAS WHERE CAT_Codigo = @codigo
			SET @msg = 'Categoría Eliminada.'
		end
		COMMIT TRAN Tadd
	end try
	begin catch
		SET @msg = 'Ocurrio un Error: ' + ERROR_MESSAGE() + 'en la linea ' + CONVERT(NVARCHAR(255), ERROR_LINE() ) + '.'
		Rollback TRAN Tadd
	end catch
end
GO
/****** Object:  StoredProcedure [dbo].[sp_autorizacion_buscar_articulos]    Script Date: 04/20/2018 12:48:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_autorizacion_buscar_articulos]
	@descripcion varchar(50)
AS
BEGIN
	select A.ART_Codigo, A.ART_CodigoInterno, A.ART_Serie, A.ART_Descripcion, A.ART_EstadoUso , A.ART_Ubicacion
	from ARTICULO A where A.ART_Estado = 0 and A.ART_Descripcion LIKE '%'+@descripcion+'%'
END
GO
/****** Object:  StoredProcedure [dbo].[sp_modelo_modificar]    Script Date: 04/20/2018 12:48:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_modelo_modificar]
	@codigo int,
	@descripcion varchar(50),
	@marca int,
	@estado tinyint,
	@msg varchar(200) output
as
begin
	SET NOCOUNT ON;
    Begin Tran Tadd
	begin try
		UPDATE MODELOS SET MOD_Descripcion = @descripcion, MAR_Codigo = @marca, MOD_Estado = @estado
		WHERE MOD_Codigo = @codigo
		SET @msg = 'Datos actualizados.'
		COMMIT TRAN Tadd
	end try
	begin catch
		SET @msg = 'Ocurrio un Error: ' + ERROR_MESSAGE() + ' en la línea ' + CONVERT(NVARCHAR(255), ERROR_LINE() ) + '.'
        Rollback TRAN Tadd
	end catch
end
GO
/****** Object:  StoredProcedure [dbo].[sp_modelo_listar_operativos]    Script Date: 04/20/2018 12:48:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_modelo_listar_operativos]
	@marca int
as
BEGIN
	if(EXISTS(SELECT * FROM MODELOS WHERE MAR_Codigo = @marca))
	BEGIN
		SELECT MO.* FROM MODELOS MO WHERE MOD_Estado=0 AND MO.MAR_Codigo = @marca ORDER BY MO.MOD_Descripcion
	END
	ELSE
	BEGIN
		SELECT MO.* FROM MODELOS MO WHERE MOD_Estado=0 AND MO.MAR_Codigo = 1 ORDER BY MO.MOD_Descripcion
	END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_modelo_listar]    Script Date: 04/20/2018 12:48:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_modelo_listar]
	@descripcion varchar(50)	
as
BEGIN
	SELECT MO.MOD_Codigo, MO.MOD_Descripcion,
	MA.MAR_Descripcion, MO.MOD_Estado, MA.MAR_Codigo
	FROM MODELOS MO
	INNER JOIN MARCAS MA
	ON MA.MAR_Codigo = MO.MAR_Codigo
	WHERE MOD_Descripcion LIKE '%'+@descripcion+'%'
	ORDER BY MO.MOD_Descripcion
END
GO
/****** Object:  StoredProcedure [dbo].[sp_modelo_insertar]    Script Date: 04/20/2018 12:48:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_modelo_insertar]
	@descripcion varchar(50),
	@marca int,
	@estado tinyint,
	@msg varchar(200) output
as
begin
	SET NOCOUNT ON;
    Begin Tran Tadd
	begin try
	DECLARE @Modelo int
		INSERT INTO MODELOS(MOD_Descripcion	,MAR_Codigo,MOD_Estado) values(@descripcion,@marca,@estado)
		SET @msg = 'Modelo Registrado.'
		COMMIT TRAN Tadd
	end try
	begin catch
		SET @msg = 'Ocurrio un Error: ' + ERROR_MESSAGE() + ' en la línea ' + CONVERT(NVARCHAR(255), ERROR_LINE() ) + '.'
        Rollback TRAN Tadd
	end catch
end
GO
/****** Object:  StoredProcedure [dbo].[sp_modelo_eliminar]    Script Date: 04/20/2018 12:48:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[sp_modelo_eliminar]
	@codigo int,
	@msg varchar(250) out
AS
BEGIN
	SET NOCOUNT ON;
    Begin Tran Tadd
	begin try
		IF(EXISTS(SELECT * FROM ARTICULO A WHERE MOD_Codigo = @codigo))
		BEGIN
			UPDATE LOCALES SET LOC_Estado = 1 WHERE LOC_Codigo = @codigo
			SET @msg = 'La marca se encuantra en uso, no se puede eliminar.'
		END
		ELSE
		BEGIN
			DELETE FROM MODELOS WHERE MOD_Codigo = @codigo
		END
		SET @msg = 'Modelo eliminado.'
		COMMIT TRAN Tadd
	end try
	begin catch
		SET @msg = 'Ocurrio un Error: ' + ERROR_MESSAGE() + ' en la línea ' + CONVERT(NVARCHAR(255), ERROR_LINE() ) + '.'
        Rollback TRAN Tadd
	end catch
END
GO
/****** Object:  StoredProcedure [dbo].[sp_marca_eliminar]    Script Date: 04/20/2018 12:48:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_marca_eliminar]
	@codigo int,
	@msg varchar(250) out
AS
BEGIN
	SET NOCOUNT ON;
    Begin Tran Tadd
	begin try
		IF(EXISTS(SELECT A.* FROM ARTICULO A WHERE A.MAR_Codigo = @codigo))
		BEGIN
			--UPDATE MARCAS SET MAR_Estado = 1 WHERE MAR_Codigo = @codigo
			SET @msg = 'La marca se encuantra en uso, no se puede eliminar.'
		END
		ELSE
		BEGIN
			DELETE FROM MARCAS WHERE MAR_Codigo = @codigo
			SET @msg = 'Marca eliminada.'
		END
		
		COMMIT TRAN Tadd
	end try
	begin catch
		SET @msg = 'Ocurrio un Error: ' + ERROR_MESSAGE() + ' en la línea ' + CONVERT(NVARCHAR(255), ERROR_LINE() ) + '.'
        Rollback TRAN Tadd
	end catch
END
GO
/****** Object:  StoredProcedure [dbo].[sp_local_eliminar]    Script Date: 04/20/2018 12:48:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_local_eliminar]
	@codigo int,
	@msg varchar(250) out
AS
BEGIN
	SET NOCOUNT ON;
    Begin Tran Tadd
	begin try
		IF(EXISTS(SELECT A.* FROM AREAS A 
					WHERE A.LOC_Codigo = @codigo))
		BEGIN
			UPDATE LOCALES SET LOC_Estado = 1 WHERE LOC_Codigo = @codigo
			SET @msg = 'El local se encuantra en uso, no se puede eliminar.'
		END
		ELSE
		BEGIN
			DELETE FROM LOCALES WHERE LOC_Codigo = @codigo
		END
		SET @msg = 'Local eliminada.'
		COMMIT TRAN Tadd
	end try
	begin catch
		SET @msg = 'Ocurrio un Error: ' + ERROR_MESSAGE() + ' en la línea ' + CONVERT(NVARCHAR(255), ERROR_LINE() ) + '.'
        Rollback TRAN Tadd
	end catch
END
GO
/****** Object:  StoredProcedure [dbo].[sp_inventario_insertar]    Script Date: 04/20/2018 12:48:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_inventario_insertar]
	@local int,
	@fechaInventario datetime,
	@jefeInmediato int,
	@codigoUsuario int,
	@codigoArea int,
	@msg varchar(200) output
as
begin
	SET NOCOUNT ON;
    Begin Tran Tadd
	begin try
		INSERT INTO INVENTARIO(LOC_Codigo,INV_FechaInventario,INV_FechaRegistro,INV_JefeInmediato,USU_Codigo,ARE_Codigo) values(@local,@fechaInventario,GETDATE(),@jefeInmediato,@codigousuario,@codigoArea)
		SET @msg = 'Inventario Registrado.'
		COMMIT TRAN Tadd
	end try
	begin catch
		SET @msg = 'Ocurrio un Error: ' + ERROR_MESSAGE() + ' en la línea ' + CONVERT(NVARCHAR(255), ERROR_LINE() ) + '.'
        Rollback TRAN Tadd
	end catch
end
GO
/****** Object:  StoredProcedure [dbo].[sp_inventario_detalle_buscar_x_ubicacion]    Script Date: 04/20/2018 12:48:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_inventario_detalle_buscar_x_ubicacion]
(
	@descripcion varchar(100)
)
AS
BEGIN
	select A.ART_Codigo, A.ART_CodigoInterno, A.ART_Descripcion, A.ART_Serie, A.MAR_Codigo, MA.MAR_Descripcion,
	   A.MOD_Codigo, MO.MOD_Descripcion, A.COL_Codigo, CO.COL_Descripcion, A.ART_Estado, A.ART_EstadoUso, A.ART_UbicaionNuevo
	from ARTICULO A
	INNER JOIN MARCAS MA
		ON A.MAR_Codigo = MA.MAR_Codigo
	INNER JOIN MODELOS MO
		ON A.MOD_Codigo = MO.MOD_Codigo
	INNER JOIN COLORES CO
		ON A.COL_Codigo = CO.COL_Codigo
		WHERE A.ART_UbicaionNuevo LIKE '%'+@descripcion+'%'
	ORDER BY ART_Codigo ASC
END
GO
/****** Object:  StoredProcedure [dbo].[sp_inventario_detalle_buscar]    Script Date: 04/20/2018 12:48:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_inventario_detalle_buscar]
AS
BEGIN
	select A.ART_Codigo, A.ART_CodigoInterno, A.ART_Descripcion, A.ART_Serie, A.MAR_Codigo, MA.MAR_Descripcion,
	   A.MOD_Codigo, MO.MOD_Descripcion, A.COL_Codigo, CO.COL_Descripcion, A.ART_Estado, A.ART_EstadoUso 
	from ARTICULO A
	INNER JOIN MARCAS MA
		ON A.MAR_Codigo = MA.MAR_Codigo
	INNER JOIN MODELOS MO
		ON A.MOD_Codigo = MO.MOD_Codigo
	INNER JOIN COLORES CO
		ON A.COL_Codigo = CO.COL_Codigo
	ORDER BY ART_Codigo ASC
END
GO
/****** Object:  StoredProcedure [dbo].[sp_presentacion_eliminar]    Script Date: 04/20/2018 12:48:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_presentacion_eliminar]
	@codigo int,
	@msg varchar(200) output
as
begin
	SET NOCOUNT ON;
    Begin Tran Tadd
	begin try
		if(EXISTS(SELECT * FROM ARTICULO A WHERE PRE_Codigo = @codigo)) 
		begin
			SET @msg = 'Existen registros con esta presentación.'
		end
		else
		begin
			DELETE FROM PRESENTACION WHERE PRE_Codigo = @codigo
			SET @msg = 'Presentación Eliminada.'
		end
		COMMIT TRAN Tadd
	end try
	begin catch
		SET @msg = 'Ocurrio un Error: ' + ERROR_MESSAGE() + ' en la línea ' + CONVERT(NVARCHAR(255), ERROR_LINE() ) + '.'
        Rollback TRAN Tadd
	end catch
end
GO
/****** Object:  StoredProcedure [dbo].[sp_permisos_modificar]    Script Date: 04/20/2018 12:48:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_permisos_modificar]
				@codigorol int,
				@codigo int,
				@Articulos int,
				@Pedidos int,
				@Autorizacion int,
				@Entradas int,
				@Entregas int,
				@Otros int,
				@Ajustes int,
				@msg varchar(200) output
			as
			begin
				SET NOCOUNT ON;
				Begin Tran Tadd
				begin try
					UPDATE PERMISOS SET  prm_Articulos=@Articulos , prm_Pedidos=@Pedidos,
					prm_Autorizacion=@Autorizacion, pm_entradas=@Entradas, PRM_entregas=@Entregas, prm_Otros=@Otros,
					prm_Ajustes=@Ajustes
					WHERE PRM_Codigo = @codigo
					SET @msg = 'Datos actualizados.'
					COMMIT TRAN Tadd
				end try
				begin catch
					SET @msg = 'Ocurrio un Error: ' + ERROR_MESSAGE() + ' en la línea ' + CONVERT(NVARCHAR(255), ERROR_LINE() ) + '.'
					Rollback TRAN Tadd
				end catch
			end




SELECT * FROM PERMISOS
GO
/****** Object:  StoredProcedure [dbo].[sp_permisos_listar]    Script Date: 04/20/2018 12:48:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_permisos_listar]	
as
BEGIN
	SELECT r.ROL_Codigo,R.ROL_Descripcion,PRM_Codigo, P.PRM_Articulos,p.PRM_Pedidos,p.PRM_Autorizacion,p.PM_Entradas,
	p.prm_Entregas,p.prm_Otros,p.prm_Ajustes
	FROM PERMISOS P 
	INNER JOIN ROLES R
	ON R.ROL_Codigo = P.ROL_Codigo
	WHERE r.ROL_Estado=0
	ORDER BY ROL_Descripcion
END
GO
/****** Object:  StoredProcedure [dbo].[sp_permisos_eliminar]    Script Date: 04/20/2018 12:48:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_permisos_eliminar]
				@codigo int,
				@msg varchar(250) out
			as
			begin
				SET NOCOUNT ON;
				Begin Tran Tadd
				begin try
					DELETE FROM PERMISOS WHERE PRM_Codigo = @codigo
					SET @msg = 'Permiso eliminado.'
					COMMIT TRAN Tadd
				end try
				begin catch
					SET @msg = 'Ocurrio un Error: ' + ERROR_MESSAGE() + ' en la línea ' + CONVERT(NVARCHAR(255), ERROR_LINE() ) + '.'
					Rollback TRAN Tadd
				end catch
			end
GO
/****** Object:  StoredProcedure [dbo].[sp_pedidodetalle_listar]    Script Date: 04/20/2018 12:48:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_pedidodetalle_listar]
	@codigopedido int
as
BEGIN
	SELECT PD.PD_Cntidad, PD.PD_Producto, PD.PD_Unidad,PD.ART_Codigo FROM PEDIDO_DETALLE PD WHERE PD.PED_Codigo = @codigopedido ORDER BY PD.PD_Codigo
END
GO
/****** Object:  StoredProcedure [dbo].[sp_pedidodetalle_insertar]    Script Date: 04/20/2018 12:48:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------PEDIDO DETALLLE----------------------------------------------------------------------

CREATE PROCEDURE [dbo].[sp_pedidodetalle_insertar]
	@codigopedido int,
	@producto varchar(100),
	@cantidad decimal(18,2),
	@unidad varchar(20),
	@codigoArticulo int
as
begin
	SET NOCOUNT ON;
    Begin Tran Tadd
	begin try
		INSERT INTO PEDIDO_DETALLE(PED_Codigo,PD_Producto,PD_Cntidad,PD_Unidad,ART_Codigo) values(@codigopedido,@producto,@cantidad,@unidad,@codigoArticulo)
		COMMIT TRAN Tadd
	end try
	begin catch
        Rollback TRAN Tadd
	end catch
end
GO
/****** Object:  StoredProcedure [dbo].[sp_pedidodetalle_eliminar]    Script Date: 04/20/2018 12:48:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_pedidodetalle_eliminar]
	@codigo int,
	@msg varchar(250) out
AS
BEGIN
	SET NOCOUNT ON;
    Begin Tran Tadd
	begin try		
		DELETE FROM PEDIDO_DETALLE WHERE PD_Codigo = @codigo
		SET @msg = 'Articulo eliminado.'
		COMMIT TRAN Tadd
	end try
	begin catch
		SET @msg = 'Ocurrio un Error: ' + ERROR_MESSAGE() + ' en la línea ' + CONVERT(NVARCHAR(255), ERROR_LINE() ) + '.'
        Rollback TRAN Tadd
	end catch
END
GO
/****** Object:  StoredProcedure [dbo].[sp_unidMed_eliminar]    Script Date: 04/20/2018 12:48:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_unidMed_eliminar]
	@codigo int,
	@msg varchar(200) output
as
begin
	SET NOCOUNT ON;
    Begin Tran Tadd
	begin try
		if(EXISTS(SELECT * FROM ARTICULO A WHERE UM_Codigo = @codigo)) 
		begin
			SET @msg = 'Existen registros con esta Unidad de Medida.'
		end
		else
		begin
			DELETE FROM UNIDAD_MEDIDA WHERE UM_Codigo = @codigo
			SET @msg = 'Unidad de Medida Eliminada.'
		end
		COMMIT TRAN Tadd
	end try
	begin catch
		SET @msg = 'Ocurrio un Error: ' + ERROR_MESSAGE() + ' en la línea ' + CONVERT(NVARCHAR(255), ERROR_LINE() ) + '.'
        Rollback TRAN Tadd
	end catch
end
GO
/****** Object:  StoredProcedure [dbo].[sp_rol_insertar]    Script Date: 04/20/2018 12:48:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_rol_insertar]
	@nombre varchar(50),
	@estado tinyint,
	@msg varchar(200) output
as
begin
	SET NOCOUNT ON;
    Begin Tran Tadd
	begin try
		DECLARE @CODIGO INT
		INSERT INTO ROLES(ROL_Descripcion,ROL_Estado) values(@nombre,@estado)
		set @CODIGO=scope_identity()
		if(@nombre='ADMINISTRADOR' OR @nombre='PROGRAMADOR')
		begin
				insert into PERMISOS(ROL_Codigo,prm_Articulos,prm_Pedidos,prm_Autorizacion,pm_Entradas,prm_Entregas,prm_Otros,PRM_Ajustes)
				VALUES(@CODIGO,1,1,1,1,1,1,1)
		end
		else
		begin
			insert into PERMISOS(ROL_Codigo,prm_Articulos,prm_Pedidos,prm_Autorizacion,pm_Entradas,prm_Entregas,prm_Otros,PRM_Ajustes)
				VALUES(@CODIGO,0,0,0,0,0,0,0)
		end
		SET @msg = 'Rol Registrado.'
		COMMIT TRAN Tadd
	end try
	begin catch
		SET @msg = 'Ocurrio un Error: ' + ERROR_MESSAGE() + ' en la línea ' + CONVERT(NVARCHAR(255), ERROR_LINE() ) + '.'
        Rollback TRAN Tadd
	end catch
end
GO
/****** Object:  StoredProcedure [dbo].[sp_rol_eliminar]    Script Date: 04/20/2018 12:48:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_rol_eliminar]
				@codigo int,
				@msg varchar(200) output
			as
			begin
				SET NOCOUNT ON;
				Begin Tran Tadd
				begin try
					if(EXISTS(SELECT * FROM PERMISOS L WHERE ROL_Codigo = @codigo)) 
					begin
						SET @msg = 'Existen permisos con este rol.'
					end
					else
					begin
						DELETE FROM ROLES WHERE ROL_Codigo = @codigo
						SET @msg = 'Dependencia Eliminada.'
					end
					COMMIT TRAN Tadd
				end try
				begin catch
					SET @msg = 'Ocurrio un Error: ' + ERROR_MESSAGE() + ' en la línea ' + CONVERT(NVARCHAR(255), ERROR_LINE() ) + '.'
					Rollback TRAN Tadd
				end catch
			end
GO
/****** Object:  Table [dbo].[USUARIOS]    Script Date: 04/20/2018 12:48:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[USUARIOS](
	[USU_Codigo] [int] IDENTITY(1,1) NOT NULL,
	[USU_Usuario] [varchar](20) NOT NULL,
	[USU_Clave] [varchar](20) NOT NULL,
	[ROL_Codigo] [int] NOT NULL,
	[PER_Codigo] [int] NOT NULL,
 CONSTRAINT [PK__USUARIOS__496107D9EDFDCC94] PRIMARY KEY CLUSTERED 
(
	[USU_Codigo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[sp_inventarioDetalle_insertar]    Script Date: 04/20/2018 12:48:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_inventarioDetalle_insertar]
	@codigoInventario int,
	@codigoArticulo int,
	@estadoConsolidado tinyint,
	@estadoUso tinyint,
	@etiquedato bit,
	@dimension varchar(100),
	@observacion varchar(100)
as
begin
	SET NOCOUNT ON;
    Begin Tran Tadd
	begin try
		INSERT INTO INVENTARIO_DETALLE(INV_Codigo,ART_Codigo,ID_EstadoConsolidado,ID_EstadoUso,ID_Etiquetado,ID_Observacion, ID_Dimension)
		values(@codigoInventario,@codigoArticulo,@estadoConsolidado,@estadoUso,@etiquedato,@observacion,@dimension)
		COMMIT TRAN Tadd
	end try
	begin catch
        Rollback TRAN Tadd
	end catch
end
GO
/****** Object:  StoredProcedure [dbo].[sp_personal_nombres]    Script Date: 04/20/2018 12:48:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
----------------------------
----------------------------

CREATE PROCEDURE [dbo].[sp_personal_nombres]
as
BEGIN
	select PER_Codigo, (PER_ApePaterno+' '+PER_ApeMaterno+' '+PER_Nombres) AS [NOMBRES] from PERSONAL
END
GO
/****** Object:  StoredProcedure [dbo].[sp_personal_modificar]    Script Date: 04/20/2018 12:48:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--INSERTAR PERSONAL
CREATE PROCEDURE [dbo].[sp_personal_modificar]
	@Codigo INT,
	@ApePaterno varchar(50),
	@ApeMaterno varchar(50),
	@Nombres varchar(100),
	@Dni char(8),
	@Email varchar(50),
	@Telefono varchar(20),
	@Estado tinyint,
	@CondicionLaboral tinyint,
	@ARE_Codigo int,
	@CAR_Codigo int,
	@msg varchar(200) output
as
begin
	SET NOCOUNT ON;
    Begin Tran Tadd
	begin try
		UPDATE PERSONAL SET
		PER_ApePaterno = @ApePaterno,
		PER_ApeMaterno = @ApeMaterno,
		PER_Nombres = @Nombres,
		PER_Dni = @Dni,
		PER_Email = @Email,
		PER_Telefono = @Telefono,
		PER_Estado = @Estado,
		PER_FechaRegistro = GETDATE(),
		PER_CondicionLaboral = @CondicionLaboral,
		ARE_Codigo = @ARE_Codigo,
		CAR_Codigo = @CAR_Codigo
		
		WHERE PER_Codigo = @Codigo
		SET @msg = 'Personal modificado.'
		COMMIT TRAN Tadd
	end try
	begin catch
		SET @msg = 'Ocurrio un Error: ' + ERROR_MESSAGE() + ' en la línea ' + CONVERT(NVARCHAR(255), ERROR_LINE() ) + '.'
        Rollback TRAN Tadd
	end catch
end
GO
/****** Object:  StoredProcedure [dbo].[sp_personal_listar_dni]    Script Date: 04/20/2018 12:48:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--LISTAR PERSONAL por nombre
create PROCEDURE [dbo].[sp_personal_listar_dni]
	@dni varchar(200)
as
begin
	SELECT P.*,C.*,L.* FROM PERSONAL P inner join CARGOS C ON P.CAR_Codigo=C.CAR_Codigo INNER JOIN AREAS L ON P.ARE_Codigo=L.ARE_Codigo 
	WHERE PER_Dni LIKE '%'+@dni+'%' 
	ORDER BY PER_Dni
end
GO
/****** Object:  StoredProcedure [dbo].[sp_PERSONAL_listar]    Script Date: 04/20/2018 12:48:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--LISTAR PERSONAL por nombre
CREATE PROCEDURE [dbo].[sp_PERSONAL_listar]
	@nombre varchar(200)
as
begin
	SELECT P.*,C.*,A.*,L.* FROM PERSONAL P inner join CARGOS C ON P.CAR_Codigo=C.CAR_Codigo 
	INNER JOIN AREAS A ON P.ARE_Codigo=A.ARE_Codigo 
	INNER JOIN LOCALES L ON L.LOC_Codigo=A.LOC_Codigo
	WHERE PER_Nombres+' '+PER_ApePaterno+''+PER_ApeMaterno LIKE '%'+@nombre+'%' 
	ORDER BY PER_ApePaterno+''+PER_ApeMaterno+''+PER_Nombres
end
GO
/****** Object:  StoredProcedure [dbo].[sp_personal_insertar]    Script Date: 04/20/2018 12:48:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--INSERTAR PERSONAL
CREATE PROCEDURE [dbo].[sp_personal_insertar]
	@ApePaterno varchar(50),
	@ApeMaterno varchar(50),
	@Nombres varchar(100),
	@Dni char(8),
	@Email varchar(50),
	@Telefono varchar(20),
	@Estado tinyint,
	@CondicionLaboral tinyint,
	@ARE_Codigo int,
	@CAR_Codigo int,
	@msg varchar(200) output
as
begin
	SET NOCOUNT ON;
    Begin Tran Tadd
	begin try
		INSERT INTO PERSONAL(PER_ApePaterno,PER_ApeMaterno,PER_Nombres,PER_Dni,PER_Email,PER_Telefono,PER_Estado,PER_FechaRegistro,
		PER_CondicionLaboral,ARE_Codigo,CAR_Codigo) values(@ApePaterno,@ApeMaterno,@Nombres,@Dni,@Email,@Telefono,@Estado,GETDATE(),
		@CondicionLaboral,@ARE_Codigo,@CAR_Codigo)
		SET @msg = 'Personal registrado.'
		COMMIT TRAN Tadd
	end try
	begin catch
		SET @msg = 'Ocurrio un Error: ' + ERROR_MESSAGE() + ' en la línea ' + CONVERT(NVARCHAR(255), ERROR_LINE() ) + '.'
        Rollback TRAN Tadd
	end catch
end
GO
/****** Object:  StoredProcedure [dbo].[sp_inventario_buscar_fecha]    Script Date: 04/20/2018 12:48:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_inventario_buscar_fecha]
(
	@fecha_1 DATE, 
	@fecha_2 DATE
)
AS
BEGIN
	SELECT A.ART_Codigo, A.ART_Descripcion,  INV.INV_FechaInventario, A.ART_Stock, A.ART_Estado, MO.MOD_Descripcion,
		MA.MAR_Descripcion, UM.UM_Descripcion,  CA.CAT_Descripcion, L.LOC_Nombre FROM ARTICULO A
	JOIN MODELOS MO
		ON A.MOD_Codigo = MO.MOD_Codigo
	JOIN MARCAS MA
		ON A.MAR_Codigo = MA.MAR_Codigo
	JOIN UNIDAD_MEDIDA UM
		ON A.UM_Codigo = UM.UM_Codigo
	INNER JOIN CATEGORIAS CA
		ON A.CAT_Codigo = CA.CAT_Codigo
	LEFT JOIN INVENTARIO_DETALLE IND
		ON A.ART_Codigo = IND.ART_Codigo
	LEFT JOIN INVENTARIO INV
		ON IND.INV_Codigo = INV.INV_Codigo
	LEFT JOIN LOCALES L
		ON INV.LOC_Codigo = L.LOC_Codigo
		WHERE INV.INV_FechaInventario>=@fecha_1 AND INV.INV_FechaInventario<=@fecha_2
END
GO
/****** Object:  StoredProcedure [dbo].[sp_inventario_articulos]    Script Date: 04/20/2018 12:48:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_inventario_articulos]
(
	@descripcion varchar(100)
)
AS
BEGIN
	SELECT A.ART_Codigo, A.ART_Descripcion,  INV.INV_FechaInventario, A.ART_Stock, A.ART_Estado, MO.MOD_Descripcion,
		MA.MAR_Descripcion, UM.UM_Descripcion,  CA.CAT_Descripcion, L.LOC_Nombre FROM ARTICULO A
	JOIN MODELOS MO
		ON A.MOD_Codigo = MO.MOD_Codigo
	JOIN MARCAS MA
		ON A.MAR_Codigo = MA.MAR_Codigo
	JOIN UNIDAD_MEDIDA UM
		ON A.UM_Codigo = UM.UM_Codigo
	INNER JOIN CATEGORIAS CA
		ON A.CAT_Codigo = CA.CAT_Codigo
	LEFT JOIN INVENTARIO_DETALLE IND
		ON A.ART_Codigo = IND.ART_Codigo
		--OR A.ART_Codigo IS NULL OR IND.ART_Codigo IS NULL
	LEFT JOIN INVENTARIO INV
		ON IND.INV_Codigo = INV.INV_Codigo
	LEFT JOIN LOCALES L
		ON INV.LOC_Codigo = L.LOC_Codigo
		WHERE A.ART_Descripcion LIKE '%'+@descripcion+'%'
	ORDER BY A.ART_Descripcion
END
GO
/****** Object:  StoredProcedure [dbo].[sp_kardex_modificar]    Script Date: 04/20/2018 12:48:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_kardex_modificar]
	@codigo int,
	@fecha datetime,
	@codigoarticulo int,
	@msg varchar(200) output
as
begin
	SET NOCOUNT ON;
    Begin Tran Tadd
	begin try
		UPDATE KARDEX SET KAR_Fecha = @fecha, ART_Codigo = @codigoarticulo
		SET @msg = 'Datos actualizados.'
		COMMIT TRAN Tadd
	end try
	begin catch
		SET @msg = 'Ocurrio un Error: ' + ERROR_MESSAGE() + ' en la línea ' + CONVERT(NVARCHAR(255), ERROR_LINE() ) + '.'
        Rollback TRAN Tadd
	end catch
end
GO
/****** Object:  StoredProcedure [dbo].[sp_kardex_listar]    Script Date: 04/20/2018 12:48:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_kardex_listar]
	@articulo int,
	@fecha1 date,
	@fecha2 date
as
BEGIN
	SELECT K.KAR_Fecha,A.ART_Descripcion, K.KAR_Numero,K.KAR_Entrada,K.KAR_Salida, K.KAR_Saldo,
	(p.PER_ApePaterno+' '+p.PER_ApeMaterno+' '+p.PER_Nombres)
	FROM KARDEX K INNER JOIN ARTICULO A ON K.ART_Codigo=A.ART_Codigo
	left join PERSONAL p on k.PER_Codigo=p.PER_Codigo
	where KAR_ESTADO=0 AND( K.ART_Codigo=@articulo or K.KAR_Fecha between @fecha1 AND @fecha2)
END
GO
/****** Object:  StoredProcedure [dbo].[sp_kardex_insertar]    Script Date: 04/20/2018 12:48:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_kardex_insertar]
	@fecha datetime,
	@codigoarticulo int,
	@msg varchar(200) output
as
begin
	SET NOCOUNT ON;
    Begin Tran Tadd
	begin try
		INSERT INTO KARDEX(KAR_Fecha, ART_Codigo) values(@fecha,@codigoarticulo)
		SET @msg = 'Kardex Registrado.'
		COMMIT TRAN Tadd
	end try
	begin catch
		SET @msg = 'Ocurrio un Error: ' + ERROR_MESSAGE() + ' en la línea ' + CONVERT(NVARCHAR(255), ERROR_LINE() ) + '.'
        Rollback TRAN Tadd
	end catch
end
GO
/****** Object:  StoredProcedure [dbo].[sp_kardex_eliminar]    Script Date: 04/20/2018 12:48:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_kardex_eliminar]
	@codigo int,
	@msg varchar(250) out
AS
BEGIN
	SET NOCOUNT ON;
    Begin Tran Tadd
	begin try		
		DELETE FROM KARDEX WHERE KAR_Codigo = @codigo
		SET @msg = 'Kardex eliminado.'
		COMMIT TRAN Tadd
	end try
	begin catch
		SET @msg = 'Ocurrio un Error: ' + ERROR_MESSAGE() + ' en la línea ' + CONVERT(NVARCHAR(255), ERROR_LINE() ) + '.'
        Rollback TRAN Tadd
	end catch
END
GO
/****** Object:  StoredProcedure [dbo].[sp_inventario_detalle_detalles_imprimir]    Script Date: 04/20/2018 12:48:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_inventario_detalle_detalles_imprimir]
(
	@Cod_Inventario int
)
AS
select A.ART_Codigo, A.ART_CodigoInterno, A.ART_Descripcion, A.MAR_Codigo, MA.MAR_Descripcion,
	   A.MOD_Codigo, MO.MOD_Descripcion, A.COL_Codigo, CO.COL_Descripcion, A.ART_Serie, ID.ID_Dimension, A.ART_Estado, A.ART_EstadoUso, ID.ID_Etiquetado, ID.ID_Observacion
	FROM INVENTARIO_DETALLE ID
	INNER JOIN ARTICULO A
		ON ID.ART_Codigo = A.ART_Codigo
	INNER JOIN MARCAS MA
		ON A.MAR_Codigo = MA.MAR_Codigo
	INNER JOIN MODELOS MO
		ON A.MOD_Codigo = MO.MOD_Codigo
	INNER JOIN COLORES CO
		ON A.COL_Codigo = CO.COL_Codigo
		WHERE ID.INV_Codigo = @Cod_Inventario
	ORDER BY ART_Codigo ASC
GO
/****** Object:  StoredProcedure [dbo].[sp_articulo_registrar]    Script Date: 04/20/2018 12:48:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_articulo_registrar]
	@codigoInterno char(15),
	@serie char(10),
	@descripcion varchar(100),
	@categoria int,
	@unidad int,
	@stock decimal(18,2),
	@estado tinyint,
	@modelo int,
	@presentacion int,
	@color int,
	@usado tinyint,
	@marca int,
	@ubicacion varchar(150),
	@ubicacionNuevo varchar(150),
	@msg varchar(200) output 
as
BEGIN
	SET NOCOUNT ON;
    Begin Tran Tadd
	begin try
		IF(EXISTS(SELECT * FROM ARTICULO WHERE ART_CodigoInterno = @codigoInterno AND ART_CodigoInterno<>'' )) 
		BEGIN
			SET @msg = 'CI'
		END
		ELSE
		BEGIN
			INSERT INTO ARTICULO(ART_CodigoInterno,ART_Serie,ART_Descripcion,ART_Stock,MOD_Codigo,CAT_Codigo,UM_Codigo,COL_Codigo,PRE_Codigo,ART_EstadoUso,ART_Estado,MAR_Codigo,ART_Ubicacion,ART_UbicaionNuevo) 
			values(@codigoInterno,@serie,@descripcion,@stock,@modelo,@categoria,@unidad,@color,@presentacion,@usado,@estado,@marca,@ubicacionNuevo,@ubicacionNuevo)
			declare @codigo int
			set @codigo=CAST(SCOPE_IDENTITY() AS VARCHAR)
			INSERT INTO KARDEX(ART_Codigo,KAR_Fecha,KAR_Numero,KAR_Entrada,KAR_Salida,KAR_Saldo,USU_Codigo,PER_Codigo,ENT_Codigo,ETG_Codig,
			KAR_ESTADO)
				values(@codigo,GETDATE(),'INICIAL',@stock,0,@stock,0,0,0,0,0)
			SET @msg = @codigo
		END
		COMMIT TRAN Tadd
	end try
	begin catch
		SET @msg = 'Ocurrio un Error: ' + ERROR_MESSAGE() + ' en la línea ' + CONVERT(NVARCHAR(255), ERROR_LINE() ) + '.'
        Rollback TRAN Tadd
	end catch
END
GO
/****** Object:  StoredProcedure [dbo].[sp_articulo_modificar]    Script Date: 04/20/2018 12:48:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_articulo_modificar]
	@codigo int,
	@codigoInterno char(15),
	@serie char(10),
	@descripcion varchar(100),
	@categoria int,
	@unidad int,
	@stock decimal(18,2),
	@estado tinyint,
	@modelo int,
	@presentacion int,
	@color int,
	@usado tinyint,
	@marca int,
	@ubicacion varchar(150),
	@ubicacionNuevo varchar(150),
	@msg varchar(200) output 
as
BEGIN
	SET NOCOUNT ON;
    Begin Tran Tadd
	begin try
		UPDATE ARTICULO SET 
		ART_CodigoInterno = @codigoInterno,
		ART_Serie = @serie,
		ART_Descripcion = @descripcion,
		ART_Stock = @stock,
		MOD_Codigo = @modelo,
		CAT_Codigo = @categoria,
		UM_Codigo = @unidad,
		COL_Codigo = @color,
		PRE_Codigo = @presentacion,
		ART_EstadoUso = @usado,
		ART_Estado = @estado,
		MAR_Codigo = @marca,
		ART_Ubicacion = @ubicacion,
		ART_UbicaionNuevo = @ubicacionNuevo

		WHERE ART_Codigo = @codigo
		UPDATE KARDEX SET ART_Codigo=@codigo,KAR_Numero='INICIAL',KAR_Entrada=@stock, KAR_Saldo=@stock,USU_Codigo=0,PER_Codigo=0,ENT_Codigo=0,ETG_Codig=0
		WHERE ART_Codigo=@codigo AND KAR_Numero='INICIAL'
		SET @msg = 'Artículo Modificado.'
		COMMIT TRAN Tadd
	end try
	begin catch
		SET @msg = 'Ocurrio un Error: ' + ERROR_MESSAGE() + ' en la línea ' + CONVERT(NVARCHAR(255), ERROR_LINE() ) + '.'
        Rollback TRAN Tadd
	end catch
END
GO
/****** Object:  StoredProcedure [dbo].[sp_cargo_eliminar]    Script Date: 04/20/2018 12:48:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_cargo_eliminar]
	@codigo int,
	@msg varchar(250) out
AS
BEGIN
	SET NOCOUNT ON;
    Begin Tran Tadd
	begin try
		IF(EXISTS(SELECT P.* FROM PERSONAL P 
					WHERE P.CAR_Codigo = @codigo))
		BEGIN
			UPDATE CARGOS SET CAR_Estado = 1 WHERE CAR_Codigo = @codigo
			SET @msg = 'El CARGO se encuentra en uso, no se puede eliminar.'
		END
		ELSE
		BEGIN
			DELETE FROM CARGOS WHERE CAR_Codigo = @codigo
		END
		SET @msg = 'cargo eliminado.'
		COMMIT TRAN Tadd
	end try
	begin catch
		SET @msg = 'Ocurrio un Error: ' + ERROR_MESSAGE() + ' en la línea ' + CONVERT(NVARCHAR(255), ERROR_LINE() ) + '.'
        Rollback TRAN Tadd
	end catch
END
GO
/****** Object:  StoredProcedure [dbo].[sp_area_eliminar]    Script Date: 04/20/2018 12:48:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_area_eliminar]
	@codigo int,
	@msg varchar(200) out
AS
BEGIN
	SET NOCOUNT ON;
    Begin Tran Tadd
	begin try
		IF(EXISTS(SELECT PER.* FROM PERSONAL PER 
					WHERE PER.ARE_Codigo = @codigo))
		BEGIN
			UPDATE AREAS SET ARE_Estado = 1 WHERE ARE_Codigo = @codigo
			SET @msg = 'El área se encuentra en uso, no se puede eliminar.'
		END
		ELSE
		BEGIN
			DELETE FROM AREAS WHERE ARE_Codigo = @codigo
			SET @msg = 'Área eliminada.'
		END
		
		COMMIT TRAN Tadd
	end try
	begin catch
		SET @msg = 'Ocurrio un Error: ' + ERROR_MESSAGE() + ' en la línea ' + CONVERT(NVARCHAR(255), ERROR_LINE() ) + '.'
        Rollback TRAN Tadd
	end catch
END
GO
/****** Object:  StoredProcedure [dbo].[sp_articulo_eliminar]    Script Date: 04/20/2018 12:48:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_articulo_eliminar]
	@codigo int,
	@msg varchar(200) output
as
begin
	SET NOCOUNT ON;
    Begin Tran Tadd
	begin try 
		IF (EXISTS(SELECT E.* FROM INVENTARIO_DETALLE E WHERE E.ART_Codigo = @codigo))
		BEGIN 
			SET @msg = 'No se puede eliminar el artículo seleccionado.'
		END
		ELSE
		BEGIN
			DELETE FROM ARTICULO WHERE ART_Codigo = @codigo 
			SET @msg = 'Artículo Eliminado.'
		END
		--UPDATE ARTICULO SET ART_Estado = 3
		--WHERE ART_Codigo = @codigo 
		
		COMMIT TRAN Tadd
	end try
	begin catch
		SET @msg = 'Ocurrio un Error: ' + ERROR_MESSAGE() + ' en la línea ' + CONVERT(NVARCHAR(255), ERROR_LINE() ) + '.'
        Rollback TRAN Tadd
	end catch
end
GO
/****** Object:  Table [dbo].[AUTORIZACION]    Script Date: 04/20/2018 12:48:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AUTORIZACION](
	[AUT_CODIGO] [int] IDENTITY(1,1) NOT NULL,
	[AUT_FECHA] [datetime] NOT NULL,
	[AUT_ORIGEN] [varchar](50) NOT NULL,
	[AUT_DESTINO] [varchar](50) NOT NULL,
	[AUT_PARAEFECTO] [varchar](50) NOT NULL,
	[PER_Codigo] [int] NOT NULL,
	[USU_CODIGO] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[AUT_CODIGO] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[BITACORA]    Script Date: 04/20/2018 12:48:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BITACORA](
	[BIT_Codigo] [int] IDENTITY(1,1) NOT NULL,
	[USU_Codigo] [int] NOT NULL,
	[BIT_FechaInicio] [datetime] NOT NULL,
	[BIT_FechaCierre] [datetime] NOT NULL,
	[BIT_Host] [varchar](20) NOT NULL,
	[BIT_IP] [char](15) NOT NULL,
 CONSTRAINT [PK__BITACORA__403B6033935434E2] PRIMARY KEY CLUSTERED 
(
	[BIT_Codigo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ENTRADA]    Script Date: 04/20/2018 12:48:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ENTRADA](
	[ENT_Codigo] [int] IDENTITY(1,1) NOT NULL,
	[ENT_Numero] [char](6) NOT NULL,
	[PED_Codigo] [int] NULL,
	[PER_Responsable] [int] NOT NULL,
	[ENT_FechaEntrada] [datetime] NOT NULL,
	[ENT_FechaRegistro] [datetime] NOT NULL,
	[ENT_Estado] [int] NOT NULL,
	[USU_Codigo] [int] NOT NULL,
	[ENT_Eliminado] [bit] NULL,
	[ENT_FechaEliminado] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ENT_Codigo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ENTREGA]    Script Date: 04/20/2018 12:48:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ENTREGA](
	[EGA_Codigo] [int] IDENTITY(1,1) NOT NULL,
	[EGA_FechaEntrega] [datetime] NOT NULL,
	[PER_Codigo] [int] NOT NULL,
	[ARE_Codigo] [int] NULL,
	[LOC_Codigo] [int] NULL,
	[EGA_FechaPedido] [date] NULL,
	[EGA_FechaRegistro] [datetime] NULL,
	[EGA_FechaDespacho] [date] NULL,
	[EGA_Numero] [int] NULL,
	[USU_Codigo] [int] NULL,
	[EGA_Eliminado] [bit] NULL,
	[EGA_FechaEliminado] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[EGA_Codigo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[sp_inventario_detalle_listar]    Script Date: 04/20/2018 12:48:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_inventario_detalle_listar]
(
	@Cod_Inventario int
)
AS
BEGIN
select US.USU_Codigo, (PE.PER_ApePaterno+' '+PE.PER_ApeMaterno+' '+PE.PER_Nombres),
		INV.INV_JefeInmediato, (AP.PER_ApePaterno+ ' ' +AP.PER_ApeMaterno+ ' '+ AP.PER_Nombres),
		LO.LOC_Nombre,AR.ARE_Descripcion
from INVENTARIO INV
INNER JOIN USUARIOS US
	ON INV.USU_Codigo = US.USU_Codigo
INNER JOIN PERSONAL PE
	ON US.PER_Codigo = PE.PER_Codigo
LEFT JOIN PERSONAL AP
	ON INV.INV_JefeInmediato = AP.PER_Codigo
INNER JOIN AREAS AR
	ON INV.ARE_Codigo = AR.ARE_Codigo
INNER JOIN LOCALES LO
	ON INV.LOC_Codigo = LO.LOC_Codigo
	where INV.INV_Codigo = @Cod_Inventario
END
GO
/****** Object:  StoredProcedure [dbo].[sp_listar__inventario_usuario]    Script Date: 04/20/2018 12:48:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_listar__inventario_usuario]
(
	@codigoUsuario int
)
AS
BEGIN
	SELECT PE.PER_Dni, PE.PER_Codigo, PE.PER_CondicionLaboral, PE.PER_Email, CA.CAR_Descripcion, AR.ARE_Descripcion
	FROM USUARIOS US
	INNER JOIN PERSONAL PE
		ON US.PER_Codigo = PE.PER_Codigo
	INNER JOIN CARGOS CA
		ON PE.CAR_Codigo = CA.CAR_Codigo
	INNER JOIN AREAS AR
		ON PE.ARE_Codigo = AR.ARE_Codigo
		WHERE US.USU_Codigo = @codigoUsuario
END
GO
/****** Object:  StoredProcedure [dbo].[sp_inventario_local]    Script Date: 04/20/2018 12:48:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_inventario_local]
(
	@Codigo_usuario int,
	@Codigo_local int output
)
AS
	set @Codigo_local = (select ARE.LOC_Codigo 
	FROM AREAS ARE
	JOIN PERSONAL PE
		ON ARE.ARE_Codigo = PE.ARE_Codigo
	JOIN USUARIOS US
		ON PE.PER_Codigo = US.PER_Codigo
		WHERE US.USU_Codigo = @Codigo_usuario)
GO
/****** Object:  StoredProcedure [dbo].[sp_inventario_listar]    Script Date: 04/20/2018 12:48:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_inventario_listar]
	@fecha_1 datetime,
	@fecha_2 datetime,
	@tipo int
AS
BEGIN
	if @tipo = 1
	begin
		SELECT I.INV_Codigo, I.INV_FechaInventario, (P.PER_ApePaterno+' '+ P.PER_ApeMaterno+ ' '+ P.PER_Nombres) as Nombres
		FROM INVENTARIO I
		INNER JOIN USUARIOS U
			ON I.USU_Codigo = U.USU_Codigo
		INNER JOIN PERSONAL P
			ON U.PER_Codigo = P.PER_Codigo
	end
	if @tipo = 2
	begin
		SELECT I.INV_Codigo, I.INV_FechaInventario, (P.PER_ApePaterno+' '+P.PER_ApeMaterno+ ' '+ P.PER_Nombres) as Nombres
		FROM INVENTARIO I
		inner JOIN USUARIOS U
			ON I.USU_Codigo = U.USU_Codigo
		inner JOIN PERSONAL P
		ON U.PER_Codigo = P.PER_Codigo
		WHERE INV_FechaInventario BETWEEN @fecha_1 AND @fecha_2
	end
END
GO
/****** Object:  StoredProcedure [dbo].[sp_usuario_validar]    Script Date: 04/20/2018 12:48:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_usuario_validar]
	@nick varchar(20),
	@clave varchar(20),
	@msg varchar(200) output
AS
BEGIN
	IF exists(SELECT * FROM USUARIOS WHERE USU_Usuario = @nick)
	BEGIN
		IF exists(SELECT * FROM USUARIOS WHERE USU_Usuario = @nick AND USU_Clave = @clave)
		BEGIN
			SET @msg = 'OK'
		END
		ELSE
		BEGIN
			SET @msg = 'Contraseña incorrecta.'
		END
	END
	ELSE
	BEGIN
		SET @msg = 'Usuario incorrecto.'
	END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_usuario_mostrar]    Script Date: 04/20/2018 12:48:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_usuario_mostrar]
	@nick varchar(20),
	@clave varchar(20)
AS
BEGIN
	SELECT U.USU_Codigo, U.PER_Codigo,P.PER_ApePaterno, P.PER_ApeMaterno, P.PER_Nombres, U.ROL_Codigo
	FROM USUARIOS U 
	INNER JOIN PERSONAL P
	ON P.PER_Codigo = U.PER_Codigo
	WHERE U.USU_Usuario = @nick AND U.USU_Clave = @clave
END
GO
/****** Object:  StoredProcedure [dbo].[sp_usuario_modificar]    Script Date: 04/20/2018 12:48:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[sp_usuario_modificar]
	@Codigo int,
	@Usuario varchar(20),
	@Clave varchar(20),
	@ROL_Codigo int,
	@PER_Codigo int,
	@msg varchar(200) output
as
begin
	SET NOCOUNT ON;
    Begin Tran Tadd
	begin try
		UPDATE USUARIOS SET USU_Usuario=@Usuario,USU_Clave=@Clave,ROL_Codigo=@ROL_Codigo,PER_Codigo=@PER_Codigo where USU_Codigo=@Codigo
		SET @msg = 'Usuario Modificado.'
		COMMIT TRAN Tadd
	end try
	begin catch
		SET @msg = 'Ocurrio un Error: ' + ERROR_MESSAGE() + ' en la línea ' + CONVERT(NVARCHAR(255), ERROR_LINE() ) + '.'
        Rollback TRAN Tadd
	end catch
end
GO
/****** Object:  StoredProcedure [dbo].[sp_usuario_listar]    Script Date: 04/20/2018 12:48:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--LISTAR Usuario por nombre
create PROCEDURE [dbo].[sp_usuario_listar]
	@Nombre varchar(20)
as
begin
	SELECT U.*,R.*,P.* FROM PERSONAL P inner join USUARIOS U ON P.PER_Codigo= U.PER_Codigo INNER JOIN ROLES R ON U.ROL_Codigo=R.ROL_Codigo 
	WHERE U.USU_Usuario like'%'+@Nombre+'%'
	ORDER BY U.USU_Usuario
end
GO
/****** Object:  StoredProcedure [dbo].[sp_usuario_insertar]    Script Date: 04/20/2018 12:48:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[sp_usuario_insertar]
	@Usuario varchar(20),
	@Clave varchar(20),
	@ROL_Codigo int,
	@PER_Codigo int,
	@msg varchar(200) output
as
begin
	SET NOCOUNT ON;
    Begin Tran Tadd
	begin try
		INSERT INTO USUARIOS(USU_Usuario,USU_Clave,ROL_Codigo,PER_Codigo) values(@Usuario,@Clave,@ROL_Codigo,@PER_Codigo)
		SET @msg = 'Usuario registrado.'
		COMMIT TRAN Tadd
	end try
	begin catch
		SET @msg = 'Ocurrio un Error: ' + ERROR_MESSAGE() + ' en la línea ' + CONVERT(NVARCHAR(255), ERROR_LINE() ) + '.'
        Rollback TRAN Tadd
	end catch
end
GO
/****** Object:  StoredProcedure [dbo].[sp_usuario_existen]    Script Date: 04/20/2018 12:48:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_usuario_existen]
	@msg varchar(200) output
AS
BEGIN
	DECLARE @NUM INT
	SELECT @NUM = COUNT(*) FROM USUARIOS
	IF @NUM > 0 
	BEGIN
		SET @msg = 'HAY'
	END
	ELSE
	BEGIN
		SET @msg = 'NO'
	END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_pedido_listar]    Script Date: 04/20/2018 12:48:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_pedido_listar]
	@fecha1 date,
	@fecha2 date
as
BEGIN
	SELECT P.PED_Codigo, P.PED_Numero, P.PED_FechaPedido,
	P.PED_FechaRegistro, (PE.PER_ApePaterno+' '+PE.PER_ApeMaterno+' '+PE.PER_Nombres), P.USU_Codigo, P.PED_Estado, P.PED_Eliminado, P.PED_FechaEliminado
	FROM PEDIDOS P
	INNER JOIN USUARIOS U 
	ON U.USU_Codigo = P.USU_Codigo
	INNER JOIN PERSONAL PE 
	ON U.PER_Codigo = PE.PER_Codigo
	WHERE P.PED_FechaPedido BETWEEN @fecha1 and @fecha2
END
GO
/****** Object:  StoredProcedure [dbo].[sp_permisos_x_usuario]    Script Date: 04/20/2018 12:48:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_permisos_x_usuario]
	@usuario int
as
begin
	SELECT P.PRM_Articulos, P.PRM_Pedidos, P.PRM_Entregas, P.PM_Entradas, P.PRM_Otros, P.PRM_Autorizacion, P.PRM_Ajustes
	FROM PERMISOS P
	INNER JOIN USUARIOS U
	ON P.ROL_Codigo = U.ROL_Codigo
	WHERE U.USU_Codigo = @usuario
end
GO
/****** Object:  StoredProcedure [dbo].[sp_verCodigoNumeroEntrega]    Script Date: 04/20/2018 12:48:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_verCodigoNumeroEntrega]
 @numero int
as
begin
	SELECT P.EGA_Codigo from ENTREGA P WHERE P.EGA_Numero = @numero
end
GO
/****** Object:  StoredProcedure [dbo].[sp_pedido_eliminar_permanente]    Script Date: 04/20/2018 12:48:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_pedido_eliminar_permanente]
	@codigo int,
	@msg varchar(250) out
AS
BEGIN
	SET NOCOUNT ON;
    Begin Tran Tadd
	begin try		
		if exists(SELECT E.* FROM ENTRADA E WHERE E.PED_Codigo = @codigo)
		begin
			SET @msg = 'No se puede eliminar. Existe una entrega que hace referencia a este pedido.'			
		end
		else
		begin
			DELETE FROM PEDIDO_DETALLE WHERE PEDIDO_DETALLE.PED_Codigo = @codigo
			DELETE FROM PEDIDOS WHERE PEDIDOS.PED_Codigo = @codigo
			SET @msg = 'Pedido eliminado.'
		end
		COMMIT TRAN Tadd
	end try
	begin catch
		SET @msg = 'Ocurrio un Error: ' + ERROR_MESSAGE() + ' en la línea ' + CONVERT(NVARCHAR(255), ERROR_LINE() ) + '.'
        Rollback TRAN Tadd
	end catch
END
GO
/****** Object:  StoredProcedure [dbo].[sp_obtener_id]    Script Date: 04/20/2018 12:48:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_obtener_id]
(
	@tipo int,
	@id int output
)
as
begin
	if(@tipo = 1) --Inventario
	begin
		set @id = (select MAX(INV_Codigo) from INVENTARIO)+1
	end
	if(@tipo = 2) -- Detalle Inventario
	begin
		set @id = (select MAX(ID_Codigo) from INVENTARIO_DETALLE)+1
	end
	if(@tipo = 3) -- Autorización
	begin
		set @id = (select MAX(AUT_CODIGO) from AUTORIZACION)+1
	end
	if(@tipo = 4) -- Pedido
	begin
		set @id = (select MAX(PED_Codigo) from PEDIDOS)+1
	end
	if(@tipo = 5) -- Entradas
	begin
		set @id = (select MAX(ENT_Codigo) from ENTRADA)+1
	end
	if(@tipo = 6) -- Entregas
	begin
		set @id = (select MAX(EGA_Codigo) from ENTREGA)+1
	end
if(@id is null)
	begin
		set @id = 1
	end
return ISNULL(@ID,1);
end
GO
/****** Object:  Table [dbo].[ENTRADA_DETALLE]    Script Date: 04/20/2018 12:48:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ENTRADA_DETALLE](
	[ENT_Codigo] [int] NOT NULL,
	[ED_Codigo] [int] IDENTITY(1,1) NOT NULL,
	[ART_Codigo] [int] NOT NULL,
	[ED_Cantidad] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_ED] PRIMARY KEY CLUSTERED 
(
	[ENT_Codigo] ASC,
	[ED_Codigo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AUTORIZACION_DETALLE]    Script Date: 04/20/2018 12:48:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AUTORIZACION_DETALLE](
	[AUT_Codigo] [int] NOT NULL,
	[AD_Codigo] [int] IDENTITY(1,1) NOT NULL,
	[AD_EstadoConservacion] [varchar](20) NOT NULL,
	[AD_ValorActual] [decimal](18, 2) NULL,
	[AD_CodigoInventario] [varchar](100) NULL,
	[ART_Codigo] [int] NOT NULL,
	[AD_UBIC_FISICA] [varchar](100) NULL,
 CONSTRAINT [PK_AUTORIZACION_DETALLE] PRIMARY KEY CLUSTERED 
(
	[AUT_Codigo] ASC,
	[AD_Codigo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ENTREGA_DETALLE]    Script Date: 04/20/2018 12:48:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ENTREGA_DETALLE](
	[EGA_Codigo] [int] NOT NULL,
	[ETD_Codigo] [int] IDENTITY(1,1) NOT NULL,
	[ART_Codigo] [int] NOT NULL,
	[ETD_Cantidad] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_ETD] PRIMARY KEY CLUSTERED 
(
	[EGA_Codigo] ASC,
	[ETD_Codigo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[sp_entrega_listar]    Script Date: 04/20/2018 12:48:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_entrega_listar]
	@fecha1 date,
	@fecha2 date
AS
BEGIN
	SELECT E.EGA_Codigo, E.EGA_Numero, E.EGA_FechaPedido,
	E.EGA_FechaEntrega, E.EGA_FechaRegistro, (PE.PER_ApePaterno+' '+PE.PER_ApeMaterno+' '+PE.PER_Nombres), E.USU_Codigo, E.EGA_Eliminado, E.EGA_FechaEliminado,
	E.ARE_Codigo, E.LOC_Codigo, E.PER_Codigo, ARE.ARE_Descripcion, LOC_Nombre, (PER.PER_ApePaterno+' '+PER.PER_ApeMaterno+' '+PER.PER_Nombres)
	FROM ENTREGA E
	INNER JOIN USUARIOS U 
	ON U.USU_Codigo = E.USU_Codigo
	INNER JOIN PERSONAL PE 
	ON U.PER_Codigo = PE.PER_Codigo
	INNER JOIN AREAS ARE
	ON ARE.ARE_Codigo = E.ARE_Codigo
	INNER JOIN LOCALES LOC
	ON LOC.LOC_Codigo = E.LOC_Codigo
	INNER JOIN PERSONAL PER 
	ON PER.PER_Codigo = E.PER_Codigo
	WHERE E.EGA_FechaEntrega BETWEEN @fecha1 and @fecha2
END
GO
/****** Object:  StoredProcedure [dbo].[sp_entrega_insertar]    Script Date: 04/20/2018 12:48:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_entrega_insertar]
	@numero int,
	@personal int,
	@area int,
	@local int,
	@fechapedido date,
	@fechaentrega date,
	@fechadespacho date,
	@codigousuario int,
	@msg varchar(200) output
as
begin
	SET NOCOUNT ON;
    Begin Tran Tadd
	begin try
		INSERT INTO ENTREGA(EGA_Numero,PER_Codigo,ARE_Codigo,LOC_Codigo,EGA_FechaPedido,EGA_FechaEntrega,EGA_FechaDespacho,EGA_FechaRegistro,USU_Codigo,EGA_Eliminado) 
		             values(@numero,@personal,@area,@local,@fechapedido,@fechaentrega,@fechadespacho,GETDATE(),@codigousuario,0)
		SET @msg = 'Entrega Registrada.'
		COMMIT TRAN Tadd
	end try
	begin catch
		SET @msg = 'Ocurrio un Error: ' + ERROR_MESSAGE() + ' en la línea ' + CONVERT(NVARCHAR(255), ERROR_LINE() ) + '.'
        Rollback TRAN Tadd
	end catch
end
GO
/****** Object:  StoredProcedure [dbo].[sp_entrada_modificar]    Script Date: 04/20/2018 12:48:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--ENTRADA MODIFICAR

CREATE PROCEDURE [dbo].[sp_entrada_modificar]
	@Codigo INT,
	@numero INT,
	@pedido int,
	@responsable int,
	@fechaentrada datetime,
	@estado tinyint,
	@usuario int,
	@msg varchar(200) output
as
begin
	SET NOCOUNT ON;
    Begin Tran Tadd
	begin try
		UPDATE ENTRADA SET ENT_Numero=@numero,PED_Codigo=@pedido,PER_Responsable=@responsable,ENT_FechaEntrada=@fechaentrada,ENT_FechaRegistro=GETDATE(),
		ENT_Estado=@estado,@usuario=@usuario,ENT_Eliminado=0 where ENT_Codigo=@Codigo
		UPDATE PEDIDOS SET PEDIDOS.PED_Estado = 1 WHERE PEDIDOS.PED_Codigo = @pedido
		SET @msg = 'Entrada Modificada.'
		COMMIT TRAN Tadd
	end try
	begin catch
		SET @msg = 'Ocurrio un Error: ' + ERROR_MESSAGE() + ' en la línea ' + CONVERT(NVARCHAR(255), ERROR_LINE() ) + '.'
        Rollback TRAN Tadd
	end catch
end
GO
/****** Object:  StoredProcedure [dbo].[sp_entrada_listar]    Script Date: 04/20/2018 12:48:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--ENTRADA LISTAR
CREATE PROCEDURE [dbo].[sp_entrada_listar]
	@fecha1 date,
	@fecha2 date
as
BEGIN
	SELECT E.ENT_Codigo, E.ENT_Numero,E.ENT_FechaEntrada,U.USU_Codigo,
	(P.PER_ApePaterno+' '+P.PER_ApeMaterno+' '+P.PER_Nombres),e.ENT_FechaRegistro, E.ENT_Estado, E.ENT_Eliminado, E.ENT_FechaEliminado,e.PED_Codigo
	FROM ENTRADA E  inner join USUARIOS U on e.USU_Codigo=u.USU_Codigo inner join PERSONAL P on p.PER_Codigo=U.PER_Codigo
	WHERE e.ENT_FechaEntrada between @fecha1 AND @fecha2
END
GO
/****** Object:  StoredProcedure [dbo].[sp_entrada_insertar2]    Script Date: 04/20/2018 12:48:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- INSERTAR ENTRADA 2
CREATE PROCEDURE [dbo].[sp_entrada_insertar2]
	@numero INT,
	@responsable int,
	@fechaentrada datetime,
	@estado tinyint,
	@usuario int
as
begin
	SET NOCOUNT ON;
    Begin Tran Tadd
	begin try
		insert into ENTRADA (ENT_Numero, PED_Codigo, PER_Responsable, ENT_FechaEntrada, ENT_FechaRegistro, ENT_Estado, USU_Codigo,ENT_Eliminado)
		values (@numero,0, @responsable, @fechaentrada, GETDATE(), @estado, @usuario,0)
		select SCOPE_IDENTITY() as codigo
		COMMIT TRAN Tadd
	end try
	begin catch
        Rollback TRAN Tadd
	end catch
end
GO
/****** Object:  StoredProcedure [dbo].[sp_entrada_insertar]    Script Date: 04/20/2018 12:48:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- INSERTRAR ENTRADA
CREATE PROCEDURE [dbo].[sp_entrada_insertar]
	@numero INT,
	@pedido int,
	@responsable int,
	@fechaentrada datetime,
	@estado tinyint,
	@usuario int
as
begin
	SET NOCOUNT ON;
    Begin Tran Tadd
	begin try

		insert into ENTRADA (ENT_Numero, PED_Codigo, PER_Responsable, ENT_FechaEntrada, ENT_FechaRegistro, ENT_Estado, USU_Codigo,ENT_Eliminado)
		values (@numero, @pedido, @responsable, @fechaentrada, GETDATE(), @estado, @usuario,0)
		UPDATE PEDIDOS SET PEDIDOS.PED_Estado = 1 WHERE PEDIDOS.PED_Codigo = @pedido
		select SCOPE_IDENTITY() as codigo
		COMMIT TRAN Tadd
	end try
	begin catch
        Rollback TRAN Tadd
	end catch
end
GO
/****** Object:  StoredProcedure [dbo].[sp_entrada_id]    Script Date: 04/20/2018 12:48:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_entrada_id]
 @numero varchar(6)
as
begin
	SELECT ENT_Codigo from ENTRADA WHERE ENT_Numero = @numero
end
GO
/****** Object:  StoredProcedure [dbo].[sp_autorizacion_listar]    Script Date: 04/20/2018 12:48:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_autorizacion_listar]
	@fecha_1 datetime,
	@fecha_2 datetime,
	@tipo int
AS
BEGIN
	if @tipo = 1
	begin
		SELECT A.AUT_CODIGO, A.AUT_FECHA,U.USU_Usuario, (P.PER_ApePaterno+' '+ P.PER_ApeMaterno+' '+ P.PER_Nombres) as Nombres
		FROM AUTORIZACION A
		INNER JOIN USUARIOS U
			ON A.USU_CODIGO = U.USU_Codigo
		INNER JOIN PERSONAL P
			ON A.PER_Codigo = P.PER_Codigo
	end
	if @tipo = 2
	begin
		SELECT A.AUT_CODIGO, A.AUT_FECHA,U.USU_Usuario, (P.PER_ApePaterno+' '+ P.PER_ApeMaterno+ ' '+ P.PER_Nombres) as Nombres
		FROM AUTORIZACION A
		INNER JOIN USUARIOS U
			ON A.USU_CODIGO = U.USU_Codigo
		INNER JOIN PERSONAL P
			ON A.PER_Codigo = P.PER_Codigo
		WHERE A.AUT_FECHA BETWEEN @fecha_1 AND @fecha_2
	end
END
GO
/****** Object:  StoredProcedure [dbo].[sp_autorizacion_insertar]    Script Date: 04/20/2018 12:48:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_autorizacion_insertar]
	@fecha date,
	@origen varchar(50),
	@destino varchar(50),
	@paraEfecto varchar(50),
	@perCodigo int,
	@usuCodigo int,
	@msg varchar(200) output
as
begin
	SET NOCOUNT ON;
    Begin Tran Tadd
	begin try
		INSERT INTO AUTORIZACION(AUT_FECHA,AUT_ORIGEN,AUT_DESTINO,AUT_PARAEFECTO,PER_Codigo,USU_CODIGO) values(@fecha,@origen,@destino,@paraEfecto,@perCodigo,@usuCodigo)
		SET @msg = 'Autorización Registrada.'
		COMMIT TRAN Tadd
	end try
	begin catch
		SET @msg = 'Ocurrio un Error: ' + ERROR_MESSAGE() + ' en la línea ' + CONVERT(NVARCHAR(255), ERROR_LINE() ) + '.'
        Rollback TRAN Tadd
	end catch
end
GO
/****** Object:  StoredProcedure [dbo].[sp_autorizacion_detalle]    Script Date: 04/20/2018 12:48:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_autorizacion_detalle]
(
	@codigo int
)
AS
BEGIN
	select A.AUT_CODIGO, A.AUT_FECHA, A.AUT_ORIGEN, A.AUT_DESTINO, A.AUT_PARAEFECTO,
			A.PER_Codigo,(P.PER_ApePaterno+' '+P.PER_ApeMaterno+ ' '+P.PER_Nombres)
	from AUTORIZACION A
	INNER JOIN PERSONAL P
		ON A.PER_Codigo = P.PER_Codigo
	WHERE A.AUT_CODIGO = @codigo
END
GO
/****** Object:  StoredProcedure [dbo].[sp_articulo_listar_Kardex]    Script Date: 04/20/2018 12:48:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_articulo_listar_Kardex]  
	@fecha1 date,
	@fecha2 date,
	@Descripcion varchar(100)
as  
begin  
	SELECT EN.EGA_Codigo , ENG.ETD_Cantidad
	FROM ARTICULO A   
	--JOIN ENTRADA_DETALLE ED on A.ART_Codigo=ED.ART_Codigo 
	--join ENTRADA E on ED.ENT_Codigo=E.ENT_Codigo
	join ENTREGA_DETALLE ENG on A.ART_Codigo=ENG.ART_Codigo
	--join USUARIOS U on E.USU_Codigo=U.USU_Codigo
	--join PERSONAL P on U.PER_Codigo=P.PER_Codigo
	join ENTREGA EN on ENG.EGA_Codigo=EN.EGA_Codigo
	--JOIN UNIDAD_MEDIDA UM ON UM.UM_Codigo = A.UM_Codigo   
	--join ENTRADA E on E.ENT_Codigo=ED.ENT_Codigo   
	WHERE (A.ART_Descripcion like '%'+@Descripcion+'%') and 
	(EN.EGA_FechaEntrega between @fecha1 AND @fecha2 )
	--or EN.EGA_FechaEntrega between @fecha1 and @fecha2
	ORDER BY ART_Descripcion  
end
GO
/****** Object:  Table [dbo].[PRECIOS]    Script Date: 04/20/2018 12:48:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PRECIOS](
	[PRC_Codigo] [int] IDENTITY(1,1) NOT NULL,
	[ENT_Codigo] [int] NOT NULL,
	[PRC_Monto] [decimal](18, 2) NOT NULL,
	[ED_Codigo] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[PRC_Codigo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[sp_autorizaciondetalle_detalle]    Script Date: 04/20/2018 12:48:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_autorizaciondetalle_detalle]
(
	@codigo int
)
AS
BEGIN
select AD.AD_CodigoInventario, AD.AD_UBIC_FISICA, ART.ART_Descripcion,AD.AD_EstadoConservacion, AD.AD_ValorActual
from AUTORIZACION_DETALLE AD
	INNER JOIN AUTORIZACION A
	ON A.AUT_CODIGO = AD.AUT_CODIGO
	INNER JOIN ARTICULO ART
	ON AD.ART_Codigo = ART.ART_Codigo	
	WHERE A.AUT_CODIGO = @codigo
END
GO
/****** Object:  StoredProcedure [dbo].[sp_articulo_listar2_Kardex]    Script Date: 04/20/2018 12:48:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_articulo_listar2_Kardex]  
	@fecha1 date,
	@fecha2 date,
	@Descripcion varchar(100)
as  
begin  
	SELECT E.ENT_FechaEntrada, A.ART_Codigo, E.ENT_Codigo,  
	ED.ED_Cantidad,P.PER_Nombres+' '+P.PER_ApePaterno+' '+P.PER_ApeMaterno as Personal,
	A.ART_Ubicacion, A.ART_UbicaionNuevo
	FROM ARTICULO A   
	JOIN ENTRADA_DETALLE ED on A.ART_Codigo=ED.ART_Codigo 
	join ENTRADA E on ED.ENT_Codigo=E.ENT_Codigo
	LEFT join USUARIOS U on E.USU_Codigo=U.USU_Codigo
	LEFT join  PERSONAL P on U.PER_Codigo=P.PER_Codigo
	--join ENTREGA_DETALLE ENG on A.ART_Codigo=ENG.ART_Codigo
	--join USUARIOS U on E.USU_Codigo=U.USU_Codigo
	--join PERSONAL P on U.PER_Codigo=P.PER_Codigo
	--join ENTREGA EN on ENG.EGA_Codigo=EN.EGA_Codigo
	--JOIN UNIDAD_MEDIDA UM ON UM.UM_Codigo = A.UM_Codigo   
	--join ENTRADA E on E.ENT_Codigo=ED.ENT_Codigo   
	WHERE (A.ART_Descripcion like '%'+@Descripcion+'%') and 
	(E.ENT_FechaEntrada between @fecha1 AND @fecha2 )
	--or EN.EGA_FechaEntrega between @fecha1 and @fecha2
	ORDER BY ART_Descripcion  
end
GO
/****** Object:  StoredProcedure [dbo].[sp_entrada_eliminar]    Script Date: 04/20/2018 12:48:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--ENTRADA ELIMINAR
CREATE PROCEDURE [dbo].[sp_entrada_eliminar]
	@codigo int,
	@msg varchar(250) out
AS
BEGIN
	SET NOCOUNT ON;
    Begin Tran Tadd
	begin try		
		declare @stockActual decimal(18,2)
		declare @cantidad decimal(18,2)
		declare @nuevoStock decimal(18,2)
		declare @limite int
		declare @pedido int
		DECLARE @codigoArticulo int
		declare ArticuloCursor CURSOR FOR
		SELECT ED.ART_Codigo, ED.ED_Cantidad
		FROM ENTRADA_DETALLE ED 
		WHERE ED.ENT_Codigo = @codigo
		OPEN ArticuloCursor
		FETCH NEXT FROM ArticuloCursor
		INTO @codigoArticulo , @cantidad
		WHILE @@FETCH_STATUS = 0
		BEGIN
			SET @stockActual = (SELECT  A.ART_Stock FROM ARTICULO A WHERE A.ART_Codigo = @codigoArticulo)
			SET @nuevoStock = @stockActual - @cantidad
			UPDATE ARTICULO SET ART_Stock = @nuevoStock WHERE ART_Codigo = @codigoArticulo
			set @pedido=(select e.PED_Codigo from ENTRADA e where e.ENT_Codigo=@codigo)
			UPDATE PEDIDOS SET PEDIDOS.PED_Estado = 0 WHERE PEDIDOS.PED_Codigo = @pedido
			UPDATE KARDEX SET KAR_ESTADO=1 WHERE ENT_Codigo=@codigo
			FETCH NEXT FROM ArticuloCursor INTO @codigoArticulo , @cantidad
		END
		CLOSE ArticuloCursor
		DEALLOCATE ArticuloCursor		

		update ENTRADA SET ENT_Eliminado = 1,ENT_Estado = 1, ENT_FechaEliminado = GETDATE() WHERE ENT_Codigo = @codigo
		SET @msg = 'Entrega eliminada.'
		COMMIT TRAN Tadd
	end try
	begin catch
		SET @msg = 'Ocurrio un Error: ' + ERROR_MESSAGE() + ' en la línea ' + CONVERT(NVARCHAR(255), ERROR_LINE() ) + '.'
        Rollback TRAN Tadd
	end catch
END
GO
/****** Object:  StoredProcedure [dbo].[sp_autorizacion_detalle_insertar]    Script Date: 04/20/2018 12:48:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_autorizacion_detalle_insertar]
	@autCodigo int,
	@estadoConser varchar(50),
	@valorActual decimal,
	@codInvent varchar(100),
	@artCod int,
	@ubicacion_fisica varchar(100),
	@msg varchar(200) output
as
begin
	SET NOCOUNT ON;
    Begin Tran Tadd
	begin try
		INSERT INTO AUTORIZACION_DETALLE(AUT_Codigo,AD_EstadoConservacion,AD_ValorActual,AD_CodigoInventario,ART_Codigo,AD_UBIC_FISICA) values(@autCodigo,@estadoConser,@valorActual,@codInvent,@artCod,@ubicacion_fisica)
		UPDATE ARTICULO SET ART_Ubicacion=ART_UbicaionNuevo, ART_UbicaionNuevo=@ubicacion_fisica WHERE ART_Codigo=@artCod
		SET @msg = 'Autorización Registrada.'
		COMMIT TRAN Tadd
	end try
	begin catch
		SET @msg = 'Ocurrio un Error: ' + ERROR_MESSAGE() + ' en la línea ' + CONVERT(NVARCHAR(255), ERROR_LINE() ) + '.'
        Rollback TRAN Tadd
	end catch
end
GO
/****** Object:  StoredProcedure [dbo].[sp_entradadetalle_listar]    Script Date: 04/20/2018 12:48:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- ENTRADA DETALLE LISTAR
CREATE PROCEDURE [dbo].[sp_entradadetalle_listar]
	@codigo int
as
BEGIN
	SELECT ED.ED_Codigo,A.ART_Codigo,A.ART_Descripcion,Ed.ED_Cantidad,A.ART_CodigoInterno,e.PED_Codigo FROM ENTRADA_DETALLE ED inner join ARTICULO A on ed.ART_Codigo=a.ART_Codigo inner join ENTRADA E 
	on ed.ENT_Codigo=e.ENT_Codigo left join PEDIDOS pe on pe.PED_Codigo=e.PED_Codigo 
	 WHERE ed.ENT_Codigo = @codigo
END
GO
/****** Object:  StoredProcedure [dbo].[sp_entradadetalle_insertar2]    Script Date: 04/20/2018 12:48:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_entradadetalle_insertar2]
	@codigoentrada int,
	@articulo int,
	@cantidad decimal(18,2),
	@descripcion varchar(100),
	@numero varchar(20),
	@usu_codigo int
as
begin
	SET NOCOUNT ON;
    Begin Tran Tadd
	begin try
			declare @detalle int
			INSERT INTO ARTICULO(ART_CodigoInterno,ART_Serie,ART_Descripcion,ART_Stock,MOD_Codigo,CAT_Codigo,UM_Codigo,COL_Codigo,PRE_Codigo,ART_EstadoUso,ART_Estado,MAR_Codigo,ART_Ubicacion,ART_UbicaionNuevo)
			VALUES('','',@descripcion,@cantidad,1,1,1,1,1,0,0,1,'CENTRAL','CENTRAL')
			SELECT @articulo=ART_Codigo FROM ARTICULO WHERE ART_Descripcion=@descripcion
			INSERT INTO ENTRADA_DETALLE(ENT_Codigo,ART_Codigo,ED_Cantidad) values(@codigoentrada,@articulo,@cantidad)
			set @detalle=(select ED.ED_Codigo from ENTRADA_DETALLE ed where ENT_Codigo=@codigoentrada and ART_Codigo=@articulo)
			INSERT INTO KARDEX(ART_Codigo,KAR_Fecha,KAR_Numero,KAR_Entrada,KAR_Salida,KAR_Saldo,USU_Codigo,PER_Codigo,KAR_ESTADO)
				values(@articulo,GETDATE(),@numero,@cantidad,0,@cantidad,@usu_codigo,0,0)
		COMMIT TRAN Tadd
	end try
	begin catch
        Rollback TRAN Tadd
	end catch
end
GO
/****** Object:  StoredProcedure [dbo].[sp_entradadetalle_insertar]    Script Date: 04/20/2018 12:48:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_entradadetalle_insertar]
	@codigoentrada int,
	@articulo int,
	@cantidad decimal(18,2),
	@numero varchar(20),
	@usu_codigo int
as
begin
	SET NOCOUNT ON;
    Begin Tran Tadd
	begin try
		declare @detalle int
		INSERT INTO ENTRADA_DETALLE(ENT_Codigo,ART_Codigo,ED_Cantidad) values(@codigoentrada,@articulo,@cantidad)
		DECLARE @stockActual decimal(18,2)
		SELECT @stockActual = A.ART_Stock FROM ARTICULO A WHERE A.ART_Codigo = @articulo
		DECLARE @stockNuevo decimal(18,2)
		SET @stockNuevo = @stockActual + @cantidad
		UPDATE ARTICULO SET ART_Stock = @stockNuevo WHERE ART_Codigo = @articulo
		set @detalle=(select ED.ED_Codigo from ENTRADA_DETALLE ed where ENT_Codigo=@codigoentrada and ART_Codigo=@articulo)
		INSERT INTO KARDEX(ART_Codigo,KAR_Fecha,KAR_Numero,KAR_Entrada,KAR_Salida,KAR_Saldo,USU_Codigo,PER_Codigo,ENT_Codigo,ETG_Codig,
			KAR_ESTADO)
				values(@articulo,GETDATE(),@numero,@cantidad,0,@stockNuevo,@usu_codigo,0,@codigoentrada,0,0)
		COMMIT TRAN Tadd
	end try
	begin catch
        Rollback TRAN Tadd
	end catch
end
GO
/****** Object:  StoredProcedure [dbo].[sp_entradadetalle_id]    Script Date: 04/20/2018 12:48:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--ENTRADA DETALLE ID
CREATE procedure [dbo].[sp_entradadetalle_id]
 @articulo int
as
begin
	SELECT ED_Codigo from ENTRADA_DETALLE WHERE art_Codigo = @articulo
end
GO
/****** Object:  StoredProcedure [dbo].[sp_entrega_eliminar_permanente]    Script Date: 04/20/2018 12:48:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_entrega_eliminar_permanente]
	@codigo int,
	@msg varchar(250) out
AS
BEGIN
	SET NOCOUNT ON;
    Begin Tran Tadd
	begin try		
		--if exists(SELECT E.* FROM KARDEX E WHERE E.PED_Codigo = @codigo)
		--begin
		--	SET @msg = 'No se puede eliminar. Existe una entrega que hace referencia a este pedido.'			
		--end
		--else
		--begin
			DELETE FROM ENTREGA_DETALLE WHERE ENTREGA_DETALLE.EGA_Codigo = @codigo
			DELETE FROM ENTREGA WHERE ENTREGA.EGA_Codigo = @codigo
			DELETE FROM KARDEX WHERE ETG_CODIG=@codigo
			SET @msg = 'Entrega eliminado.'
		--end
		COMMIT TRAN Tadd
	end try
	begin catch
		SET @msg = 'Ocurrio un Error: ' + ERROR_MESSAGE() + ' en la línea ' + CONVERT(NVARCHAR(255), ERROR_LINE() ) + '.'
        Rollback TRAN Tadd
	end catch
END
GO
/****** Object:  StoredProcedure [dbo].[sp_entrega_eliminar]    Script Date: 04/20/2018 12:48:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_entrega_eliminar]
	@codigo int,
	@msg varchar(250) out
AS
BEGIN
	SET NOCOUNT ON;
    Begin Tran Tadd
	begin try		
		declare @stockActual decimal(18,2)
		declare @cantidad decimal(18,2)
		declare @nuevoStock decimal(18,2)
		declare @limite int
		DECLARE @codigoArticulo int
		declare ArticuloCursor CURSOR FOR
		SELECT ED.ART_Codigo, ED.ETD_Cantidad
		FROM ENTREGA_DETALLE ED 
		WHERE ED.EGA_Codigo = @codigo
		OPEN ArticuloCursor
		FETCH NEXT FROM ArticuloCursor
		INTO @codigoArticulo , @cantidad
		WHILE @@FETCH_STATUS = 0
		BEGIN
			SET @stockActual = (SELECT  A.ART_Stock FROM ARTICULO A WHERE A.ART_Codigo = @codigoArticulo)
			SET @nuevoStock = @stockActual + @cantidad
			UPDATE ARTICULO SET ART_Stock = @nuevoStock WHERE ART_Codigo = @codigoArticulo
			UPDATE KARDEX SET KAR_ESTADO=1 WHERE ETG_Codig=@codigo
			FETCH NEXT FROM ArticuloCursor INTO @codigoArticulo , @cantidad
		END
		CLOSE ArticuloCursor
		DEALLOCATE ArticuloCursor		
		update ENTREGA SET EGA_Eliminado = 1, EGA_FechaEliminado = GETDATE() WHERE EGA_Codigo = @codigo
		SET @msg = 'Entrega eliminada.'
		COMMIT TRAN Tadd
	end try
	begin catch
		SET @msg = 'Ocurrio un Error: ' + ERROR_MESSAGE() + ' en la línea ' + CONVERT(NVARCHAR(255), ERROR_LINE() ) + '.'
        Rollback TRAN Tadd
	end catch
END
GO
/****** Object:  StoredProcedure [dbo].[sp_kardex_crear]    Script Date: 04/20/2018 12:48:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_kardex_crear]
	@fecha1 date,
	@fecha2 date,
	@codigo int
as
begin
	SELECT E.ENT_FechaEntrada as 'Fecha', E.ENT_Numero as 'Orden', ED_Cantidad AS 'Entrada' 
	FROM ENTRADA_DETALLE ED
	INNER JOIN ARTICULO A
	ON A.ART_Codigo = ED.ART_Codigo
	INNER JOIN ENTRADA E
	ON E.ENT_Codigo = ED.ENT_Codigo
	----INNER JOIN USUARIOS U
	----ON U.USU_Codigo = E.USU_Codigo
	----INNER JOIN PERSONAL P
	----ON P.PER_Codigo = U.PER_Codigo
	WHERE ED.ART_Codigo = @codigo AND E.ENT_FechaEntrada BETWEEN @fecha1 AND @fecha2
end
GO
/****** Object:  StoredProcedure [dbo].[sp_entrada_restaurar]    Script Date: 04/20/2018 12:48:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--ENTRADA RESTAURAR
CREATE PROCEDURE [dbo].[sp_entrada_restaurar]
	@codigo int,
	@msg varchar(250) out
AS
BEGIN
	SET NOCOUNT ON;
    Begin Tran Tadd
	begin try	
		declare @stockActual decimal(18,2)
		declare @cantidad decimal(18,2)
		declare @nuevoStock decimal(18,2)
		declare @limite int
		DECLARE @codigoArticulo int
		declare @pedido int
		declare ArticuloCursor CURSOR FOR
		SELECT ED.ART_Codigo, ED.ED_Cantidad
		FROM ENTRADA_DETALLE ED 
		WHERE ED.ENT_Codigo = @codigo
		OPEN ArticuloCursor
		FETCH NEXT FROM ArticuloCursor
		INTO @codigoArticulo , @cantidad
		WHILE @@FETCH_STATUS = 0
		BEGIN
			SET @stockActual = (SELECT  A.ART_Stock FROM ARTICULO A WHERE A.ART_Codigo = @codigoArticulo)
			SET @nuevoStock = @stockActual + @cantidad
			UPDATE ARTICULO SET ART_Stock = @nuevoStock WHERE ART_Codigo = @codigoArticulo
			set @pedido=(select e.PED_Codigo from ENTRADA e where e.ENT_Codigo=@codigo)
			UPDATE PEDIDOS SET PEDIDOS.PED_Estado = 1 WHERE PEDIDOS.PED_Codigo = @pedido
			UPDATE KARDEX SET KAR_ESTADO=0 WHERE ENT_Codigo=@codigo
			FETCH NEXT FROM ArticuloCursor INTO @codigoArticulo , @cantidad
		END
		CLOSE ArticuloCursor
		DEALLOCATE ArticuloCursor		
		update ENTRADA SET ENT_Eliminado = 0,ENT_Estado=0 WHERE ENT_Codigo = @codigo
		SET @msg = 'Entrega restaurado.'
		COMMIT TRAN Tadd
	end try
	begin catch
		SET @msg = 'Ocurrio un Error: ' + ERROR_MESSAGE() + ' en la línea ' + CONVERT(NVARCHAR(255), ERROR_LINE() ) + '.'
        Rollback TRAN Tadd
	end catch
END
GO
/****** Object:  StoredProcedure [dbo].[sp_entregadetalle_listar]    Script Date: 04/20/2018 12:48:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_entregadetalle_listar]
	@codigo int 
as
begin
	SELECT ED.ART_Codigo, ED.ETD_Cantidad, UM.UM_Descripcion, ART_Descripcion
	FROM ENTREGA_DETALLE ED
	INNER JOIN ARTICULO A
	ON A.ART_Codigo = ED.ART_Codigo
	INNER JOIN UNIDAD_MEDIDA UM
	ON UM.UM_Codigo = A.UM_Codigo
	WHERE ED.EGA_Codigo = @codigo
end
GO
/****** Object:  StoredProcedure [dbo].[sp_entregadetalle_insertar]    Script Date: 04/20/2018 12:48:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_entregadetalle_insertar]
	@codigoentrega int,
	@articulo int,
	@cantidad decimal(18,2),
	@numero int,
	@usu_codigo int,
	@personal int,
	@ubicacionAntigua varchar(100),
	@ubicacionActual varchar(100)
as
begin
	SET NOCOUNT ON;
    Begin Tran Tadd
	begin try
		INSERT INTO ENTREGA_DETALLE(EGA_Codigo,ART_Codigo,ETD_Cantidad) values(@codigoentrega,@articulo,@cantidad)
		DECLARE @stockActual decimal(18,2)
		SELECT @stockActual = A.ART_Stock FROM ARTICULO A WHERE A.ART_Codigo = @articulo

		DECLARE @stockNuevo decimal(18,2)
		DECLARE @descArea varchar(50)
		SET @stockNuevo = @stockActual - @cantidad
		UPDATE ARTICULO SET ART_Stock = @stockNuevo, ART_Ubicacion = @ubicacionAntigua ,ART_UbicaionNuevo = @ubicacionActual  WHERE ART_Codigo = @articulo
		INSERT INTO KARDEX(ART_Codigo,KAR_Fecha,KAR_Numero,KAR_Entrada,KAR_Salida,KAR_Saldo,USU_Codigo,PER_Codigo,ENT_Codigo,ETG_Codig,KAR_ESTADO)
			values(@articulo,GETDATE(),('ETG-'+CAST(@numero AS VARCHAR)),0,@cantidad,@stockNuevo,@usu_codigo,@personal,0,@codigoentrega,0)
		COMMIT TRAN Tadd
	end try
	begin catch
        Rollback TRAN Tadd
	end catch
end
GO
/****** Object:  StoredProcedure [dbo].[sp_entrega_restaurar]    Script Date: 04/20/2018 12:48:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_entrega_restaurar]
	@codigo int,
	@msg varchar(250) out
AS
BEGIN
	SET NOCOUNT ON;
    Begin Tran Tadd
	begin try		
		SET NOCOUNT ON;
		declare @stockActual decimal(18,2)
		declare @cantidad decimal(18,2)
		declare @nuevoStock decimal(18,2)
		declare @limite int
		DECLARE @codigoArticulo int
		declare ArticuloCursor CURSOR FOR
		SELECT ED.ART_Codigo, ED.ETD_Cantidad
		FROM ENTREGA_DETALLE ED 
		WHERE ED.EGA_Codigo = @codigo
		OPEN ArticuloCursor
		FETCH NEXT FROM ArticuloCursor
		INTO @codigoArticulo , @cantidad
		WHILE @@FETCH_STATUS = 0
		BEGIN
			SET @stockActual = (SELECT  A.ART_Stock FROM ARTICULO A WHERE A.ART_Codigo = @codigoArticulo)
			SET @nuevoStock = @stockActual + @cantidad
			UPDATE ARTICULO SET ART_Stock = @nuevoStock WHERE ART_Codigo = @codigoArticulo
			UPDATE KARDEX SET KAR_ESTADO=0 WHERE ETG_Codig=@codigo
			FETCH NEXT FROM ArticuloCursor INTO @codigoArticulo , @cantidad
		END
		CLOSE ArticuloCursor
		DEALLOCATE ArticuloCursor		
		
		update ENTREGA SET EGA_Eliminado = 0 WHERE EGA_Codigo = @codigo
		SET @msg = 'Entrega restaurado.'
		COMMIT TRAN Tadd
	end try
	begin catch
		SET @msg = 'Ocurrio un Error: ' + ERROR_MESSAGE() + ' en la línea ' + CONVERT(NVARCHAR(255), ERROR_LINE() ) + '.'
        Rollback TRAN Tadd
	end catch
END
GO
/****** Object:  StoredProcedure [dbo].[sp_precio_Modificar]    Script Date: 04/20/2018 12:48:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_precio_Modificar]
	@codigo int,
	@entrada int,
	@entradaDetalle int,
	@precio decimal(18,2),
	@msg varchar(200) output
as
begin
	SET NOCOUNT ON;
    Begin Tran Tadd
	begin try
		UPDATE PRECIOS SET PRC_Monto=@precio where PRC_Codigo=@codigo and ENT_Codigo=@entrada and ED_Codigo=@entradaDetalle
		SET @msg = 'Precio Modificado.'
		COMMIT TRAN Tadd
	end try
	begin catch
		SET @msg = 'Ocurrio un Error: ' + ERROR_MESSAGE() + ' en la línea ' + CONVERT(NVARCHAR(255), ERROR_LINE() ) + '.'
        Rollback TRAN Tadd
	end catch
end
GO
/****** Object:  StoredProcedure [dbo].[sp_precio_listar2]    Script Date: 04/20/2018 12:48:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[sp_precio_listar2]
	@articulo int
AS
BEGIN
	SELECT PRC_Monto, A.ART_Codigo,P.PRC_Codigo,ED.ENT_Codigo,ED.ED_Codigo,e.ENT_FechaRegistro
	from PRECIOS P INNER JOIN ENTRADA_DETALLE ED ON P.ED_Codigo=ED.ED_Codigo INNER JOIN ENTRADA E ON P.ENT_Codigo=E.ENT_Codigo
	INNER JOIN ARTICULO A ON A.ART_Codigo=ED.ART_Codigo WHERE A.ART_Codigo=@articulo order by e.ENT_FechaRegistro desc
END
GO
/****** Object:  StoredProcedure [dbo].[sp_precio_listar]    Script Date: 04/20/2018 12:48:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_precio_listar]
	@articulo int,
	@detalle int
AS
BEGIN
	SELECT PRC_Monto, A.ART_Codigo,P.PRC_Codigo,ED.ENT_Codigo,ED.ED_Codigo,e.ENT_FechaRegistro
	from PRECIOS P INNER JOIN ENTRADA_DETALLE ED ON P.ED_Codigo=ED.ED_Codigo INNER JOIN ENTRADA E ON P.ENT_Codigo=E.ENT_Codigo
	INNER JOIN ARTICULO A ON A.ART_Codigo=ED.ART_Codigo WHERE A.ART_Codigo=@articulo and ED.ED_Codigo=@detalle
	
END
GO
/****** Object:  StoredProcedure [dbo].[sp_precio_insertar]    Script Date: 04/20/2018 12:48:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_precio_insertar]
	@entrada int,
	@entradaDetalle int,
	@precio decimal(18,2),
	@msg varchar(200) output
as
begin
	SET NOCOUNT ON;
    Begin Tran Tadd
	begin try
		INSERT INTO PRECIOS(ENT_Codigo,ED_Codigo,PRC_Monto) values(@entrada,@entradaDetalle,@precio)
		SET @msg = 'Precio registrado.'
		COMMIT TRAN Tadd
	end try
	begin catch
		SET @msg = 'Ocurrio un Error: ' + ERROR_MESSAGE() + ' en la línea ' + CONVERT(NVARCHAR(255), ERROR_LINE() ) + '.'
        Rollback TRAN Tadd
	end catch
end
GO
/****** Object:  StoredProcedure [dbo].[sp_entradadetalle_listar_detalle]    Script Date: 04/20/2018 12:48:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--ENTRADA DETALLE LISTAR DETALLE
CREATE procedure [dbo].[sp_entradadetalle_listar_detalle]
	@detalle_ int,
	@entrada_ int
as
begin
	declare @articulo int
	SELECT isnull(ed.ED_Cantidad,0.00),isnull(P.PRC_Monto,0.00),A.ART_Descripcion,A.ART_Codigo,A.ART_CodigoInterno,M.MAR_Descripcion,MD.MOD_Descripcion,isnull(p.PRC_Codigo,0),isnull(ed.ED_Codigo,0),isnull(ed.ENT_Codigo,0) from ARTICULO A 
	inner join MARCAS M on A.MAR_Codigo=M.MAR_Codigo
	inner join MODELOS MD ON A.MOD_CODIGO=MD.MOD_CODIGO
	LEFT JOIN ENTRADA_DETALLE ED ON A.ART_Codigo=ED.ART_Codigo 
	LEFT JOIN PRECIOS P ON ED.ED_Codigo=P.ED_Codigo AND ED.ENT_Codigo=P.ENT_Codigo and @articulo=ed.ART_Codigo
	WHERE ED.ED_Codigo=@detalle_ and ed.ENT_Codigo=@entrada_ and a.ART_Codigo=@articulo

end
GO
/****** Object:  StoredProcedure [dbo].[sp_entradadetalle_eliminar]    Script Date: 04/20/2018 12:48:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--[sp_entradadetalle_eliminar]
CREATE PROCEDURE [dbo].[sp_entradadetalle_eliminar]
	@codigoentrada int
AS
BEGIN
		declare @stockActual decimal(18,2)
		declare @cantidad decimal(18,2)
		declare @nuevoStock decimal(18,2)
		declare @limite int
		declare @pedido int
		DECLARE @codigoArticulo int
		declare ArticuloCursor CURSOR FOR
		SELECT ED.ART_Codigo, ED.ED_Cantidad
		FROM ENTRADA_DETALLE ED 
		WHERE ED.ENT_Codigo = @codigoentrada
		OPEN ArticuloCursor
		FETCH NEXT FROM ArticuloCursor
		INTO @codigoArticulo , @cantidad
		WHILE @@FETCH_STATUS = 0
		BEGIN
			
			SET @stockActual = (SELECT  A.ART_Stock FROM ARTICULO A WHERE A.ART_Codigo = @codigoArticulo)
			SET @nuevoStock = @stockActual - @cantidad
			UPDATE ARTICULO SET ART_Stock = @nuevoStock WHERE ART_Codigo = @codigoArticulo
			set @pedido=(select e.PED_Codigo from ENTRADA e where e.ENT_Codigo=@codigoentrada)
			FETCH NEXT FROM ArticuloCursor INTO @codigoArticulo , @cantidad
		END
		CLOSE ArticuloCursor
		DEALLOCATE ArticuloCursor		
		delete from PRECIOS where PRECIOS.ENT_Codigo=@codigoentrada
		DELETE FROM ENTRADA_DETALLE WHERE ENTRADA_DETALLE.ENT_Codigo =@codigoentrada
END
GO
/****** Object:  StoredProcedure [dbo].[sp_entrada_eliminar_permanente]    Script Date: 04/20/2018 12:48:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--ENTRADA ELIMINAR PERMANENTE
CREATE PROCEDURE [dbo].[sp_entrada_eliminar_permanente]
	@codigo int,
	@msg varchar(250) out
AS
BEGIN
	SET NOCOUNT ON;
    Begin Tran Tadd
	begin try		
		--if exists(SELECT E.* FROM KARDEX E WHERE E.PED_Codigo = @codigo)
		--begin
		--	SET @msg = 'No se puede eliminar. Existe una entrega que hace referencia a este pedido.'			
		--end
		--else
		--begin
			DECLARE @precio int
			select @precio=p.PRC_Codigo from PRECIOS p 
			inner join ENTRADA_DETALLE ed on ed.ED_Codigo=p.ED_Codigo
			inner join  entrada e on e.ent_Codigo=p.ent_Codigo and p.ED_Codigo=ed.ED_Codigo
			where e.ent_Codigo=@codigo
			delete FROM PRECIOS WHERE PRECIOS.PRC_Codigo=@precio
			DELETE FROM ENTRADA_DETALLE WHERE ENTRADA_DETALLE.ENT_Codigo =@codigo
			DELETE FROM ENTRADA WHERE ENTRADA.ENT_Codigo = @codigo
			DELETE FROM KARDEX WHERE ENT_CODIGO=@codigo
			SET @msg = 'Entrada eliminado.'
		--end
		COMMIT TRAN Tadd
	end try
	begin catch
		SET @msg = 'Ocurrio un Error: ' + ERROR_MESSAGE() + ' en la línea ' + CONVERT(NVARCHAR(255), ERROR_LINE() ) + '.'
        Rollback TRAN Tadd
	end catch
END
GO
/****** Object:  Default [DF__PEDIDOS__PED_Fec__02FC7413]    Script Date: 04/20/2018 12:48:22 ******/
ALTER TABLE [dbo].[PEDIDOS] ADD  CONSTRAINT [DF__PEDIDOS__PED_Fec__02FC7413]  DEFAULT (getdate()) FOR [PED_FechaPedido]
GO
/****** Object:  Default [DF__PEDIDOS__PED_Fec__03F0984C]    Script Date: 04/20/2018 12:48:22 ******/
ALTER TABLE [dbo].[PEDIDOS] ADD  CONSTRAINT [DF__PEDIDOS__PED_Fec__03F0984C]  DEFAULT (getdate()) FOR [PED_FechaRegistro]
GO
/****** Object:  Default [DF__PEDIDOS__PED_Est__04E4BC85]    Script Date: 04/20/2018 12:48:22 ******/
ALTER TABLE [dbo].[PEDIDOS] ADD  CONSTRAINT [DF__PEDIDOS__PED_Est__04E4BC85]  DEFAULT ((0)) FOR [PED_Estado]
GO
/****** Object:  Default [DF__PEDIDO_DE__PD_Cn__02084FDA]    Script Date: 04/20/2018 12:48:24 ******/
ALTER TABLE [dbo].[PEDIDO_DETALLE] ADD  CONSTRAINT [DF__PEDIDO_DE__PD_Cn__02084FDA]  DEFAULT ((0)) FOR [PD_Cntidad]
GO
/****** Object:  Default [DF__INVENTARI__INV_F__7D439ABD]    Script Date: 04/20/2018 12:48:24 ******/
ALTER TABLE [dbo].[INVENTARIO] ADD  CONSTRAINT [DF__INVENTARI__INV_F__7D439ABD]  DEFAULT (getdate()) FOR [INV_FechaInventario]
GO
/****** Object:  Default [DF__INVENTARI__INV_F__7E37BEF6]    Script Date: 04/20/2018 12:48:24 ******/
ALTER TABLE [dbo].[INVENTARIO] ADD  CONSTRAINT [DF__INVENTARI__INV_F__7E37BEF6]  DEFAULT (getdate()) FOR [INV_FechaRegistro]
GO
/****** Object:  Default [DF__ARTICULO__ART_St__7C4F7684]    Script Date: 04/20/2018 12:48:24 ******/
ALTER TABLE [dbo].[ARTICULO] ADD  CONSTRAINT [DF__ARTICULO__ART_St__7C4F7684]  DEFAULT ((0)) FOR [ART_Stock]
GO
/****** Object:  Default [DF__INVENTARI__ID_Es__7F2BE32F]    Script Date: 04/20/2018 12:48:24 ******/
ALTER TABLE [dbo].[INVENTARIO_DETALLE] ADD  CONSTRAINT [DF__INVENTARI__ID_Es__7F2BE32F]  DEFAULT ((0)) FOR [ID_EstadoConsolidado]
GO
/****** Object:  Default [DF__INVENTARI__ID_Es__00200768]    Script Date: 04/20/2018 12:48:24 ******/
ALTER TABLE [dbo].[INVENTARIO_DETALLE] ADD  CONSTRAINT [DF__INVENTARI__ID_Es__00200768]  DEFAULT ((0)) FOR [ID_EstadoUso]
GO
/****** Object:  Default [DF__INVENTARI__ID_Et__01142BA1]    Script Date: 04/20/2018 12:48:24 ******/
ALTER TABLE [dbo].[INVENTARIO_DETALLE] ADD  CONSTRAINT [DF__INVENTARI__ID_Et__01142BA1]  DEFAULT ((0)) FOR [ID_Etiquetado]
GO
/****** Object:  Default [DF__PERSONAL__PER_Fe__0B91BA14]    Script Date: 04/20/2018 12:48:24 ******/
ALTER TABLE [dbo].[PERSONAL] ADD  CONSTRAINT [DF__PERSONAL__PER_Fe__0B91BA14]  DEFAULT (getdate()) FOR [PER_FechaRegistro]
GO
/****** Object:  ForeignKey [FK_PERMISO_ROL]    Script Date: 04/20/2018 12:48:24 ******/
ALTER TABLE [dbo].[PERMISOS]  WITH CHECK ADD  CONSTRAINT [FK_PERMISO_ROL] FOREIGN KEY([ROL_Codigo])
REFERENCES [dbo].[ROLES] ([ROL_Codigo])
GO
ALTER TABLE [dbo].[PERMISOS] CHECK CONSTRAINT [FK_PERMISO_ROL]
GO
/****** Object:  ForeignKey [FK_PEDIDO_DETALLE]    Script Date: 04/20/2018 12:48:24 ******/
ALTER TABLE [dbo].[PEDIDO_DETALLE]  WITH CHECK ADD  CONSTRAINT [FK_PEDIDO_DETALLE] FOREIGN KEY([PED_Codigo])
REFERENCES [dbo].[PEDIDOS] ([PED_Codigo])
GO
ALTER TABLE [dbo].[PEDIDO_DETALLE] CHECK CONSTRAINT [FK_PEDIDO_DETALLE]
GO
/****** Object:  ForeignKey [FK_MODELO_MARCA]    Script Date: 04/20/2018 12:48:24 ******/
ALTER TABLE [dbo].[MODELOS]  WITH CHECK ADD  CONSTRAINT [FK_MODELO_MARCA] FOREIGN KEY([MAR_Codigo])
REFERENCES [dbo].[MARCAS] ([MAR_Codigo])
GO
ALTER TABLE [dbo].[MODELOS] CHECK CONSTRAINT [FK_MODELO_MARCA]
GO
/****** Object:  ForeignKey [FK_INVENTARIO_LOCAL]    Script Date: 04/20/2018 12:48:24 ******/
ALTER TABLE [dbo].[INVENTARIO]  WITH CHECK ADD  CONSTRAINT [FK_INVENTARIO_LOCAL] FOREIGN KEY([LOC_Codigo])
REFERENCES [dbo].[LOCALES] ([LOC_Codigo])
GO
ALTER TABLE [dbo].[INVENTARIO] CHECK CONSTRAINT [FK_INVENTARIO_LOCAL]
GO
/****** Object:  ForeignKey [FK_ARTICULO_CATEGORIA]    Script Date: 04/20/2018 12:48:24 ******/
ALTER TABLE [dbo].[ARTICULO]  WITH CHECK ADD  CONSTRAINT [FK_ARTICULO_CATEGORIA] FOREIGN KEY([CAT_Codigo])
REFERENCES [dbo].[CATEGORIAS] ([CAT_Codigo])
GO
ALTER TABLE [dbo].[ARTICULO] CHECK CONSTRAINT [FK_ARTICULO_CATEGORIA]
GO
/****** Object:  ForeignKey [FK_ARTICULO_COLOR]    Script Date: 04/20/2018 12:48:24 ******/
ALTER TABLE [dbo].[ARTICULO]  WITH CHECK ADD  CONSTRAINT [FK_ARTICULO_COLOR] FOREIGN KEY([COL_Codigo])
REFERENCES [dbo].[COLORES] ([COL_Codigo])
GO
ALTER TABLE [dbo].[ARTICULO] CHECK CONSTRAINT [FK_ARTICULO_COLOR]
GO
/****** Object:  ForeignKey [FK_AREAS_LOCAL]    Script Date: 04/20/2018 12:48:24 ******/
ALTER TABLE [dbo].[AREAS]  WITH CHECK ADD  CONSTRAINT [FK_AREAS_LOCAL] FOREIGN KEY([LOC_Codigo])
REFERENCES [dbo].[LOCALES] ([LOC_Codigo])
GO
ALTER TABLE [dbo].[AREAS] CHECK CONSTRAINT [FK_AREAS_LOCAL]
GO
/****** Object:  ForeignKey [FK_ARTICULO]    Script Date: 04/20/2018 12:48:24 ******/
ALTER TABLE [dbo].[KARDEX]  WITH CHECK ADD  CONSTRAINT [FK_ARTICULO] FOREIGN KEY([ART_Codigo])
REFERENCES [dbo].[ARTICULO] ([ART_Codigo])
GO
ALTER TABLE [dbo].[KARDEX] CHECK CONSTRAINT [FK_ARTICULO]
GO
/****** Object:  ForeignKey [FK_INVENTARIO_DETALLE]    Script Date: 04/20/2018 12:48:24 ******/
ALTER TABLE [dbo].[INVENTARIO_DETALLE]  WITH CHECK ADD  CONSTRAINT [FK_INVENTARIO_DETALLE] FOREIGN KEY([INV_Codigo])
REFERENCES [dbo].[INVENTARIO] ([INV_Codigo])
GO
ALTER TABLE [dbo].[INVENTARIO_DETALLE] CHECK CONSTRAINT [FK_INVENTARIO_DETALLE]
GO
/****** Object:  ForeignKey [FK_AREA_PERSONAL]    Script Date: 04/20/2018 12:48:24 ******/
ALTER TABLE [dbo].[PERSONAL]  WITH CHECK ADD  CONSTRAINT [FK_AREA_PERSONAL] FOREIGN KEY([ARE_Codigo])
REFERENCES [dbo].[AREAS] ([ARE_Codigo])
GO
ALTER TABLE [dbo].[PERSONAL] CHECK CONSTRAINT [FK_AREA_PERSONAL]
GO
/****** Object:  ForeignKey [FK_PERSONAL_CARGO]    Script Date: 04/20/2018 12:48:24 ******/
ALTER TABLE [dbo].[PERSONAL]  WITH CHECK ADD  CONSTRAINT [FK_PERSONAL_CARGO] FOREIGN KEY([CAR_Codigo])
REFERENCES [dbo].[CARGOS] ([CAR_Codigo])
GO
ALTER TABLE [dbo].[PERSONAL] CHECK CONSTRAINT [FK_PERSONAL_CARGO]
GO
/****** Object:  ForeignKey [FK_USUARIO_PERSONAL]    Script Date: 04/20/2018 12:48:24 ******/
ALTER TABLE [dbo].[USUARIOS]  WITH CHECK ADD  CONSTRAINT [FK_USUARIO_PERSONAL] FOREIGN KEY([PER_Codigo])
REFERENCES [dbo].[PERSONAL] ([PER_Codigo])
GO
ALTER TABLE [dbo].[USUARIOS] CHECK CONSTRAINT [FK_USUARIO_PERSONAL]
GO
/****** Object:  ForeignKey [FK_USUARIO_ROL]    Script Date: 04/20/2018 12:48:24 ******/
ALTER TABLE [dbo].[USUARIOS]  WITH CHECK ADD  CONSTRAINT [FK_USUARIO_ROL] FOREIGN KEY([ROL_Codigo])
REFERENCES [dbo].[ROLES] ([ROL_Codigo])
GO
ALTER TABLE [dbo].[USUARIOS] CHECK CONSTRAINT [FK_USUARIO_ROL]
GO
/****** Object:  ForeignKey [FK_AUTORIZACION_PERSONAL]    Script Date: 04/20/2018 12:48:24 ******/
ALTER TABLE [dbo].[AUTORIZACION]  WITH CHECK ADD  CONSTRAINT [FK_AUTORIZACION_PERSONAL] FOREIGN KEY([PER_Codigo])
REFERENCES [dbo].[PERSONAL] ([PER_Codigo])
GO
ALTER TABLE [dbo].[AUTORIZACION] CHECK CONSTRAINT [FK_AUTORIZACION_PERSONAL]
GO
/****** Object:  ForeignKey [FK_AUTORIZACION_USUARIO]    Script Date: 04/20/2018 12:48:24 ******/
ALTER TABLE [dbo].[AUTORIZACION]  WITH CHECK ADD  CONSTRAINT [FK_AUTORIZACION_USUARIO] FOREIGN KEY([USU_CODIGO])
REFERENCES [dbo].[USUARIOS] ([USU_Codigo])
GO
ALTER TABLE [dbo].[AUTORIZACION] CHECK CONSTRAINT [FK_AUTORIZACION_USUARIO]
GO
/****** Object:  ForeignKey [FK_BITACORA_USUARIOS]    Script Date: 04/20/2018 12:48:24 ******/
ALTER TABLE [dbo].[BITACORA]  WITH CHECK ADD  CONSTRAINT [FK_BITACORA_USUARIOS] FOREIGN KEY([USU_Codigo])
REFERENCES [dbo].[USUARIOS] ([USU_Codigo])
GO
ALTER TABLE [dbo].[BITACORA] CHECK CONSTRAINT [FK_BITACORA_USUARIOS]
GO
/****** Object:  ForeignKey [FK_ENTRADA_USUARIO]    Script Date: 04/20/2018 12:48:24 ******/
ALTER TABLE [dbo].[ENTRADA]  WITH CHECK ADD  CONSTRAINT [FK_ENTRADA_USUARIO] FOREIGN KEY([USU_Codigo])
REFERENCES [dbo].[USUARIOS] ([USU_Codigo])
GO
ALTER TABLE [dbo].[ENTRADA] CHECK CONSTRAINT [FK_ENTRADA_USUARIO]
GO
/****** Object:  ForeignKey [FK_ENTREGA_USUARIO]    Script Date: 04/20/2018 12:48:24 ******/
ALTER TABLE [dbo].[ENTREGA]  WITH CHECK ADD  CONSTRAINT [FK_ENTREGA_USUARIO] FOREIGN KEY([USU_Codigo])
REFERENCES [dbo].[USUARIOS] ([USU_Codigo])
GO
ALTER TABLE [dbo].[ENTREGA] CHECK CONSTRAINT [FK_ENTREGA_USUARIO]
GO
/****** Object:  ForeignKey [FK_ED_ARTICULO]    Script Date: 04/20/2018 12:48:24 ******/
ALTER TABLE [dbo].[ENTRADA_DETALLE]  WITH CHECK ADD  CONSTRAINT [FK_ED_ARTICULO] FOREIGN KEY([ART_Codigo])
REFERENCES [dbo].[ARTICULO] ([ART_Codigo])
GO
ALTER TABLE [dbo].[ENTRADA_DETALLE] CHECK CONSTRAINT [FK_ED_ARTICULO]
GO
/****** Object:  ForeignKey [FK_ED_ENTRADA]    Script Date: 04/20/2018 12:48:24 ******/
ALTER TABLE [dbo].[ENTRADA_DETALLE]  WITH CHECK ADD  CONSTRAINT [FK_ED_ENTRADA] FOREIGN KEY([ENT_Codigo])
REFERENCES [dbo].[ENTRADA] ([ENT_Codigo])
GO
ALTER TABLE [dbo].[ENTRADA_DETALLE] CHECK CONSTRAINT [FK_ED_ENTRADA]
GO
/****** Object:  ForeignKey [FK_AUTORIZACION_ARTICULO]    Script Date: 04/20/2018 12:48:24 ******/
ALTER TABLE [dbo].[AUTORIZACION_DETALLE]  WITH CHECK ADD  CONSTRAINT [FK_AUTORIZACION_ARTICULO] FOREIGN KEY([ART_Codigo])
REFERENCES [dbo].[ARTICULO] ([ART_Codigo])
GO
ALTER TABLE [dbo].[AUTORIZACION_DETALLE] CHECK CONSTRAINT [FK_AUTORIZACION_ARTICULO]
GO
/****** Object:  ForeignKey [FK_AUTORIZACION_DETALLE]    Script Date: 04/20/2018 12:48:24 ******/
ALTER TABLE [dbo].[AUTORIZACION_DETALLE]  WITH CHECK ADD  CONSTRAINT [FK_AUTORIZACION_DETALLE] FOREIGN KEY([AUT_Codigo])
REFERENCES [dbo].[AUTORIZACION] ([AUT_CODIGO])
GO
ALTER TABLE [dbo].[AUTORIZACION_DETALLE] CHECK CONSTRAINT [FK_AUTORIZACION_DETALLE]
GO
/****** Object:  ForeignKey [FK_ETD_ARTICULO]    Script Date: 04/20/2018 12:48:24 ******/
ALTER TABLE [dbo].[ENTREGA_DETALLE]  WITH CHECK ADD  CONSTRAINT [FK_ETD_ARTICULO] FOREIGN KEY([ART_Codigo])
REFERENCES [dbo].[ARTICULO] ([ART_Codigo])
GO
ALTER TABLE [dbo].[ENTREGA_DETALLE] CHECK CONSTRAINT [FK_ETD_ARTICULO]
GO
/****** Object:  ForeignKey [FK_ETD_ENTREGA]    Script Date: 04/20/2018 12:48:24 ******/
ALTER TABLE [dbo].[ENTREGA_DETALLE]  WITH CHECK ADD  CONSTRAINT [FK_ETD_ENTREGA] FOREIGN KEY([EGA_Codigo])
REFERENCES [dbo].[ENTREGA] ([EGA_Codigo])
GO
ALTER TABLE [dbo].[ENTREGA_DETALLE] CHECK CONSTRAINT [FK_ETD_ENTREGA]
GO
/****** Object:  ForeignKey [FK_PRECIO_ED]    Script Date: 04/20/2018 12:48:24 ******/
ALTER TABLE [dbo].[PRECIOS]  WITH CHECK ADD  CONSTRAINT [FK_PRECIO_ED] FOREIGN KEY([ENT_Codigo], [ED_Codigo])
REFERENCES [dbo].[ENTRADA_DETALLE] ([ENT_Codigo], [ED_Codigo])
GO
ALTER TABLE [dbo].[PRECIOS] CHECK CONSTRAINT [FK_PRECIO_ED]
GO
