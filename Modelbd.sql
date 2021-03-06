USE [Api]
GO
/****** Object:  User [alumno]    Script Date: 20/5/2022 11:08:57 ******/
CREATE USER [alumno] FOR LOGIN [alumno] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[Mascota]    Script Date: 20/5/2022 11:08:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mascota](
	[IdMascota] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](32) NOT NULL,
	[Edad] [int] NOT NULL,
	[Estado] [varchar](128) NOT NULL,
	[IdRefugio] [int] NOT NULL,
	[Foto] [varchar](128) NOT NULL,
	[IdRaza] [int] NOT NULL,
	[Castrado] [bit] NOT NULL,
 CONSTRAINT [PK_Mascota] PRIMARY KEY CLUSTERED 
(
	[IdMascota] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Raza]    Script Date: 20/5/2022 11:08:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Raza](
	[IdRaza] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](64) NOT NULL,
 CONSTRAINT [PK_Razas] PRIMARY KEY CLUSTERED 
(
	[IdRaza] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Refugio]    Script Date: 20/5/2022 11:08:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Refugio](
	[IdRefugio] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](32) NOT NULL,
	[Telefono] [varchar](32) NOT NULL,
	[Email] [varchar](64) NOT NULL,
	[Password] [varchar](64) NOT NULL,
	[Foto] [varchar](512) NOT NULL,
	[Direccion] [varchar](128) NOT NULL,
 CONSTRAINT [PK_Refugios] PRIMARY KEY CLUSTERED 
(
	[IdRefugio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoUsuario]    Script Date: 20/5/2022 11:08:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoUsuario](
	[IdTipoUsuario] [int] IDENTITY(1,1) NOT NULL,
	[Tipo] [varchar](64) NOT NULL,
 CONSTRAINT [PK_Roles] PRIMARY KEY CLUSTERED 
(
	[IdTipoUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 20/5/2022 11:08:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuario](
	[IdUsuario] [int] IDENTITY(1,1) NOT NULL,
	[IdTipoUsuario] [int] NOT NULL,
	[Nombre] [varchar](32) NOT NULL,
	[Apellido] [varchar](64) NOT NULL,
	[Email] [varchar](128) NOT NULL,
	[Password] [varchar](64) NOT NULL,
	[IdRefugio] [int] NULL,
 CONSTRAINT [PK_Usuario] PRIMARY KEY CLUSTERED 
(
	[IdUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Mascota] ON 

INSERT [dbo].[Mascota] ([IdMascota], [Nombre], [Edad], [Estado], [IdRefugio], [Foto], [IdRaza], [Castrado]) VALUES (6, N'Pepita', 2, N'Bien/Estable', 1, N'https://imagenes.20minutos.es/files/og_thumbnail/uploads/imagenes/2019/07/20/1012478.jpg', 1, 1)
INSERT [dbo].[Mascota] ([IdMascota], [Nombre], [Edad], [Estado], [IdRefugio], [Foto], [IdRaza], [Castrado]) VALUES (7, N'Frufri', 8, N'Fracturada pata derecha', 3, N'https://cdn.stamped.io/uploads/photos/12459_704127959106_5223f145_8a2c_431e_ac25_290f606eb9d7.jpg', 2, 0)
INSERT [dbo].[Mascota] ([IdMascota], [Nombre], [Edad], [Estado], [IdRefugio], [Foto], [IdRaza], [Castrado]) VALUES (9, N'Tuki', 1, N'Moquillo', 2, N'https://demascotas.info/wp-content/uploads/2017/10/dog_maltese_thoroughbred_white_fur_small_dog_animal_pet-601920.jpg', 3, 1)
INSERT [dbo].[Mascota] ([IdMascota], [Nombre], [Edad], [Estado], [IdRefugio], [Foto], [IdRaza], [Castrado]) VALUES (11, N'Pelucita', 6, N'Bien/Estable', 1, N'https://media.elestimulo.com/2020/12/golden2.jpg', 4, 1)
SET IDENTITY_INSERT [dbo].[Mascota] OFF
GO
SET IDENTITY_INSERT [dbo].[Raza] ON 

INSERT [dbo].[Raza] ([IdRaza], [Nombre]) VALUES (1, N'Rottweiler')
INSERT [dbo].[Raza] ([IdRaza], [Nombre]) VALUES (2, N'Caniche Toy')
INSERT [dbo].[Raza] ([IdRaza], [Nombre]) VALUES (3, N'Maltés')
INSERT [dbo].[Raza] ([IdRaza], [Nombre]) VALUES (4, N'Golden')
SET IDENTITY_INSERT [dbo].[Raza] OFF
GO
SET IDENTITY_INSERT [dbo].[Refugio] ON 

INSERT [dbo].[Refugio] ([IdRefugio], [Nombre], [Telefono], [Email], [Password], [Foto], [Direccion]) VALUES (1, N'Patitas Al Rescate', N'1132371409', N'patitas@gmail.com', N'patitas1234', N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQd0_x16i0OvA0amlyrthfC3zUxJo7Mt54lKyExpTVVdTj9PiE8GO-KP8JJhpFaoEUUFfI&usqp=CAU', N'Av. Gral Paz 8342')
INSERT [dbo].[Refugio] ([IdRefugio], [Nombre], [Telefono], [Email], [Password], [Foto], [Direccion]) VALUES (2, N'Patitas Glew', N'1550152504', N'patitasglew@gmail.com', N'glew436', N'https://d1kvlp4er3agpe.cloudfront.net/resources/images/groups/2/3/0/3/2/vb0kvmdcqv.jpg', N'Av. Córdoba 2423')
INSERT [dbo].[Refugio] ([IdRefugio], [Nombre], [Telefono], [Email], [Password], [Foto], [Direccion]) VALUES (3, N'SentimientoAnimal', N'1139578371', N'sanimal@gmail.com', N'sanimal83562', N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTLby3YGqcOwODiKgBFoKaZo5jwffQeKkL_qtNiesK9f8QSFbYSqgHe10dY5FFf2Wl8YT8&usqp=CAU', N'Lavalle 423')
SET IDENTITY_INSERT [dbo].[Refugio] OFF
GO
SET IDENTITY_INSERT [dbo].[Usuario] ON 

INSERT [dbo].[Usuario] ([IdUsuario], [IdTipoUsuario], [Nombre], [Apellido], [Email], [Password], [IdRefugio]) VALUES (1, 1, N'Jade', N'Arevalos', N'jade.arevort@gmail.com', N'CuentaMascotas', 1)
INSERT [dbo].[Usuario] ([IdUsuario], [IdTipoUsuario], [Nombre], [Apellido], [Email], [Password], [IdRefugio]) VALUES (2, 2, N'Uriel', N'Cherni', N'uricherni@gmail.com', N'UriCherniii', NULL)
SET IDENTITY_INSERT [dbo].[Usuario] OFF
GO
ALTER TABLE [dbo].[Mascota]  WITH CHECK ADD  CONSTRAINT [FK_Mascotas_Razas] FOREIGN KEY([IdRaza])
REFERENCES [dbo].[Raza] ([IdRaza])
GO
ALTER TABLE [dbo].[Mascota] CHECK CONSTRAINT [FK_Mascotas_Razas]
GO
ALTER TABLE [dbo].[Mascota]  WITH CHECK ADD  CONSTRAINT [FK_Mascotas_Refugios] FOREIGN KEY([IdRefugio])
REFERENCES [dbo].[Refugio] ([IdRefugio])
GO
ALTER TABLE [dbo].[Mascota] CHECK CONSTRAINT [FK_Mascotas_Refugios]
GO
