USE [ColognatoStefanoStore]
GO
/****** Object:  User [ColognatoStefanoStore]    Script Date: 26/03/2014 17.26.09 ******/
CREATE USER [ColognatoStefanoStore] FOR LOGIN [ColognatoStefanoStore] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_datareader] ADD MEMBER [ColognatoStefanoStore]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [ColognatoStefanoStore]
GO
/****** Object:  Table [dbo].[Basket]    Script Date: 26/03/2014 17.26.09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Basket](
	[BasketId] [int] IDENTITY(1,1) NOT NULL,
	[OrdineId] [int] NULL,
	[UtenteId] [int] NULL,
	[ProdottoId] [int] NULL,
	[Quantita] [int] NULL,
 CONSTRAINT [PK_Basket] PRIMARY KEY CLUSTERED 
(
	[BasketId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Prodotti]    Script Date: 26/03/2014 17.26.09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Prodotti](
	[ProdottoId] [int] IDENTITY(1,1) NOT NULL,
	[Descrizione] [nvarchar](32) NULL,
	[Prezzo] [decimal](18, 2) NULL,
 CONSTRAINT [PK_Prodotti] PRIMARY KEY CLUSTERED 
(
	[ProdottoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Basket] ON 

INSERT [dbo].[Basket] ([BasketId], [OrdineId], [UtenteId], [ProdottoId], [Quantita]) VALUES (19, 1, 1, 1, 5)
INSERT [dbo].[Basket] ([BasketId], [OrdineId], [UtenteId], [ProdottoId], [Quantita]) VALUES (20, 1, 1, 1, 7)
INSERT [dbo].[Basket] ([BasketId], [OrdineId], [UtenteId], [ProdottoId], [Quantita]) VALUES (22, 1, 1, 1, 22)
INSERT [dbo].[Basket] ([BasketId], [OrdineId], [UtenteId], [ProdottoId], [Quantita]) VALUES (23, 1, 1, 1, 50)
INSERT [dbo].[Basket] ([BasketId], [OrdineId], [UtenteId], [ProdottoId], [Quantita]) VALUES (24, 1, 1, 1, 75)
SET IDENTITY_INSERT [dbo].[Basket] OFF
SET IDENTITY_INSERT [dbo].[Prodotti] ON 

INSERT [dbo].[Prodotti] ([ProdottoId], [Descrizione], [Prezzo]) VALUES (1, N'Prodotto1', CAST(12.10 AS Decimal(18, 2)))
INSERT [dbo].[Prodotti] ([ProdottoId], [Descrizione], [Prezzo]) VALUES (2, N'Prodotto2', CAST(115.00 AS Decimal(18, 2)))
INSERT [dbo].[Prodotti] ([ProdottoId], [Descrizione], [Prezzo]) VALUES (3, N'Prodotto3', CAST(14.50 AS Decimal(18, 2)))
SET IDENTITY_INSERT [dbo].[Prodotti] OFF
