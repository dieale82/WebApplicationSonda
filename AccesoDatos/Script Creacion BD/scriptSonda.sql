USE [master]
GO
/****** Object:  Database [Sonda]    Script Date: 2/04/2020 7:23:29 p. m. ******/
CREATE DATABASE [Sonda]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Sonda', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\Sonda.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Sonda_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\Sonda_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Sonda] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Sonda].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Sonda] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Sonda] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Sonda] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Sonda] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Sonda] SET ARITHABORT OFF 
GO
ALTER DATABASE [Sonda] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Sonda] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Sonda] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Sonda] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Sonda] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Sonda] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Sonda] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Sonda] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Sonda] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Sonda] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Sonda] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Sonda] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Sonda] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Sonda] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Sonda] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Sonda] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Sonda] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Sonda] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Sonda] SET  MULTI_USER 
GO
ALTER DATABASE [Sonda] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Sonda] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Sonda] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Sonda] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Sonda] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Sonda] SET QUERY_STORE = OFF
GO
USE [Sonda]
GO
/****** Object:  Table [dbo].[CitasMedicas]    Script Date: 2/04/2020 7:23:29 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CitasMedicas](
	[idCitaMedica] [int] IDENTITY(1,1) NOT NULL,
	[idMedico] [int] NOT NULL,
	[idEspecialidad] [int] NOT NULL,
	[fechaCitaMedica] [date] NOT NULL,
	[nombrePaciente] [varchar](85) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idCitaMedica] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Especialidades]    Script Date: 2/04/2020 7:23:29 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Especialidades](
	[idEspecialidad] [int] IDENTITY(1,1) NOT NULL,
	[descEspecialidad] [varchar](80) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idEspecialidad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EspecialidadMedico]    Script Date: 2/04/2020 7:23:29 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EspecialidadMedico](
	[idEspecialidadMedico] [int] IDENTITY(1,1) NOT NULL,
	[idMedico] [int] NOT NULL,
	[idEspecialidad] [int] NOT NULL,
	[nombreUniversidad] [varchar](80) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idEspecialidadMedico] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Medicos]    Script Date: 2/04/2020 7:23:29 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Medicos](
	[idMedico] [int] IDENTITY(1,1) NOT NULL,
	[tipoDocumento] [varchar](3) NOT NULL,
	[numeroDocumento] [varchar](20) NOT NULL,
	[nombreMedico] [varchar](85) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idMedico] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[CitasMedicas] ON 

INSERT [dbo].[CitasMedicas] ([idCitaMedica], [idMedico], [idEspecialidad], [fechaCitaMedica], [nombrePaciente]) VALUES (1, 1, 1, CAST(N'2020-04-03' AS Date), N'ANA ISABEL VACA')
INSERT [dbo].[CitasMedicas] ([idCitaMedica], [idMedico], [idEspecialidad], [fechaCitaMedica], [nombrePaciente]) VALUES (2, 2, 2, CAST(N'2020-04-04' AS Date), N'ROBINSON HERRERA GOMEZ')
SET IDENTITY_INSERT [dbo].[CitasMedicas] OFF
SET IDENTITY_INSERT [dbo].[Especialidades] ON 

INSERT [dbo].[Especialidades] ([idEspecialidad], [descEspecialidad]) VALUES (1, N'MEDICINA GENERAL')
INSERT [dbo].[Especialidades] ([idEspecialidad], [descEspecialidad]) VALUES (2, N'ODONTOLOGIA')
INSERT [dbo].[Especialidades] ([idEspecialidad], [descEspecialidad]) VALUES (3, N'RADIOLOGIA')
INSERT [dbo].[Especialidades] ([idEspecialidad], [descEspecialidad]) VALUES (4, N'PATOLOGIA')
SET IDENTITY_INSERT [dbo].[Especialidades] OFF
SET IDENTITY_INSERT [dbo].[EspecialidadMedico] ON 

INSERT [dbo].[EspecialidadMedico] ([idEspecialidadMedico], [idMedico], [idEspecialidad], [nombreUniversidad]) VALUES (1, 1, 1, N'UNIVERSIDAD1')
INSERT [dbo].[EspecialidadMedico] ([idEspecialidadMedico], [idMedico], [idEspecialidad], [nombreUniversidad]) VALUES (2, 2, 2, N'UNIVERSIDAD2')
INSERT [dbo].[EspecialidadMedico] ([idEspecialidadMedico], [idMedico], [idEspecialidad], [nombreUniversidad]) VALUES (4, 3, 3, N'UNIVERSIDAD3')
INSERT [dbo].[EspecialidadMedico] ([idEspecialidadMedico], [idMedico], [idEspecialidad], [nombreUniversidad]) VALUES (5, 4, 4, N'UNIVERSIDAD4')
INSERT [dbo].[EspecialidadMedico] ([idEspecialidadMedico], [idMedico], [idEspecialidad], [nombreUniversidad]) VALUES (6, 5, 1, N'UNIVERSIDAD5')
SET IDENTITY_INSERT [dbo].[EspecialidadMedico] OFF
SET IDENTITY_INSERT [dbo].[Medicos] ON 

INSERT [dbo].[Medicos] ([idMedico], [tipoDocumento], [numeroDocumento], [nombreMedico]) VALUES (1, N'CC', N'6406240', N'DIEGO ALEJANDRO LOPEZ PENILLA')
INSERT [dbo].[Medicos] ([idMedico], [tipoDocumento], [numeroDocumento], [nombreMedico]) VALUES (2, N'CC', N'1077044521', N'MONICA MENDEZ VARGAS')
INSERT [dbo].[Medicos] ([idMedico], [tipoDocumento], [numeroDocumento], [nombreMedico]) VALUES (3, N'CC', N'31456821', N'ENRIQUE PARRA TABARES')
INSERT [dbo].[Medicos] ([idMedico], [tipoDocumento], [numeroDocumento], [nombreMedico]) VALUES (4, N'CC', N'70989444', N'ANDRES FERNANDO LOPEZ')
INSERT [dbo].[Medicos] ([idMedico], [tipoDocumento], [numeroDocumento], [nombreMedico]) VALUES (5, N'CC', N'31422332', N'CAROLINA ORTIZ MACHADO')
SET IDENTITY_INSERT [dbo].[Medicos] OFF
/****** Object:  Index [CitasMedicas_FKIndex1]    Script Date: 2/04/2020 7:23:29 p. m. ******/
CREATE NONCLUSTERED INDEX [CitasMedicas_FKIndex1] ON [dbo].[CitasMedicas]
(
	[idEspecialidad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [CitasMedicas_FKIndex2]    Script Date: 2/04/2020 7:23:29 p. m. ******/
CREATE NONCLUSTERED INDEX [CitasMedicas_FKIndex2] ON [dbo].[CitasMedicas]
(
	[idMedico] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IFK_RelIdEspecialidad]    Script Date: 2/04/2020 7:23:29 p. m. ******/
CREATE NONCLUSTERED INDEX [IFK_RelIdEspecialidad] ON [dbo].[CitasMedicas]
(
	[idEspecialidad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IFK_RelIdMedico]    Script Date: 2/04/2020 7:23:29 p. m. ******/
CREATE NONCLUSTERED INDEX [IFK_RelIdMedico] ON [dbo].[CitasMedicas]
(
	[idMedico] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [EspecialidadMedico_FKIndex1]    Script Date: 2/04/2020 7:23:29 p. m. ******/
CREATE NONCLUSTERED INDEX [EspecialidadMedico_FKIndex1] ON [dbo].[EspecialidadMedico]
(
	[idEspecialidad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [EspecialidadMedico_FKIndex2]    Script Date: 2/04/2020 7:23:29 p. m. ******/
CREATE NONCLUSTERED INDEX [EspecialidadMedico_FKIndex2] ON [dbo].[EspecialidadMedico]
(
	[idMedico] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IFK_RelIdEspecialidad]    Script Date: 2/04/2020 7:23:29 p. m. ******/
CREATE NONCLUSTERED INDEX [IFK_RelIdEspecialidad] ON [dbo].[EspecialidadMedico]
(
	[idEspecialidad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IFK_RelIdMedico]    Script Date: 2/04/2020 7:23:29 p. m. ******/
CREATE NONCLUSTERED INDEX [IFK_RelIdMedico] ON [dbo].[EspecialidadMedico]
(
	[idMedico] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CitasMedicas]  WITH CHECK ADD FOREIGN KEY([idEspecialidad])
REFERENCES [dbo].[Especialidades] ([idEspecialidad])
GO
ALTER TABLE [dbo].[CitasMedicas]  WITH CHECK ADD FOREIGN KEY([idMedico])
REFERENCES [dbo].[Medicos] ([idMedico])
GO
ALTER TABLE [dbo].[EspecialidadMedico]  WITH CHECK ADD FOREIGN KEY([idEspecialidad])
REFERENCES [dbo].[Especialidades] ([idEspecialidad])
GO
ALTER TABLE [dbo].[EspecialidadMedico]  WITH CHECK ADD FOREIGN KEY([idMedico])
REFERENCES [dbo].[Medicos] ([idMedico])
GO
/****** Object:  StoredProcedure [dbo].[SP_GuardarCitaMedica]    Script Date: 2/04/2020 7:23:29 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Diego Alejandro López
-- Create date: 2-Abril-2020
-- Description:	Procedimiento almacenado para guardar citas médicas
-- =============================================
CREATE PROCEDURE [dbo].[SP_GuardarCitaMedica]
	-- Add the parameters for the stored procedure here
	@idMedico int,
	@idEspecialidad int,
	@fechaCitaMedica date,
	@nombrePaciente varchar(85)	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO [dbo].[CitasMedicas]
           ([idMedico]
           ,[idEspecialidad]
           ,[fechaCitaMedica]
           ,[nombrePaciente])
     VALUES
           (@idMedico,@idEspecialidad,@fechaCitaMedica,@nombrePaciente)
		   
	select max(idCitaMedica) as citaMedicaIngresada from CitasMedicas
END
GO
USE [master]
GO
ALTER DATABASE [Sonda] SET  READ_WRITE 
GO
