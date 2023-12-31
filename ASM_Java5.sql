USE [ASM_Java5]
GO
ALTER TABLE [dbo].[products] DROP CONSTRAINT [FK1krrsjgcawsfg8k8u4hm5gi8q]
GO
ALTER TABLE [dbo].[orders] DROP CONSTRAINT [FKk3cjfcgb621qhahps1tre43e4]
GO
ALTER TABLE [dbo].[orderdetails] DROP CONSTRAINT [FKj4gc2ja2otvwemf4rho2lp3s8]
GO
ALTER TABLE [dbo].[orderdetails] DROP CONSTRAINT [FKaltatpxipsjtcih4d1h6bn0xr]
GO
/****** Object:  Table [dbo].[products]    Script Date: 6/14/2021 1:28:42 PM ******/
DROP TABLE [dbo].[products]
GO
/****** Object:  Table [dbo].[orders]    Script Date: 6/14/2021 1:28:42 PM ******/
DROP TABLE [dbo].[orders]
GO
/****** Object:  Table [dbo].[orderdetails]    Script Date: 6/14/2021 1:28:42 PM ******/
DROP TABLE [dbo].[orderdetails]
GO
/****** Object:  Table [dbo].[categories]    Script Date: 6/14/2021 1:28:42 PM ******/
DROP TABLE [dbo].[categories]
GO
/****** Object:  Table [dbo].[accounts]    Script Date: 6/14/2021 1:28:42 PM ******/
DROP TABLE [dbo].[accounts]
GO
/****** Object:  Table [dbo].[accounts]    Script Date: 6/14/2021 1:28:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[accounts](
	[username] [varchar](255) NOT NULL,
	[activated] [bit] NOT NULL,
	[admin] [bit] NOT NULL,
	[email] [varchar](255) NULL,
	[fullname] [varchar](255) NULL,
	[password] [varchar](255) NULL,
	[photo] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[categories]    Script Date: 6/14/2021 1:28:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[categories](
	[id] [varchar](255) NOT NULL,
	[name] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[orderdetails]    Script Date: 6/14/2021 1:28:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[orderdetails](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[price] [float] NULL,
	[quantity] [int] NULL,
	[orderid] [bigint] NULL,
	[productid] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[orders]    Script Date: 6/14/2021 1:28:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[orders](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[address] [varchar](255) NULL,
	[createdate] [date] NULL,
	[username] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[products]    Script Date: 6/14/2021 1:28:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[products](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[available] [bit] NULL,
	[createdate] [date] NULL,
	[image] [varchar](255) NULL,
	[name] [varchar](255) NULL,
	[price] [float] NULL,
	[categoryid] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[accounts] ([username], [activated], [admin], [email], [fullname], [password], [photo]) VALUES (N'admin', 1, 1, N'khanhhnps12852@fpt.edu', N'admin', N'admin', N'admin.jpg')
INSERT [dbo].[accounts] ([username], [activated], [admin], [email], [fullname], [password], [photo]) VALUES (N'hung', 1, 0, N'hau@gmail.com', N'hung', N'123', N'hau.jpg')
INSERT [dbo].[accounts] ([username], [activated], [admin], [email], [fullname], [password], [photo]) VALUES (N'khanh', 0, 0, N'khanh@gmail.com', N'khanh', N'123', N'khanh.jpg')
INSERT [dbo].[accounts] ([username], [activated], [admin], [email], [fullname], [password], [photo]) VALUES (N'tan', 1, 0, N'tan@gmail.com', N'tan', N'123', N'tan.jpg')
INSERT [dbo].[categories] ([id], [name]) VALUES (N'1', N'Quan')
INSERT [dbo].[categories] ([id], [name]) VALUES (N'2', N'Áo')
INSERT [dbo].[categories] ([id], [name]) VALUES (N'3', N'Áo khoác')
INSERT [dbo].[categories] ([id], [name]) VALUES (N'4', N'Giày')
INSERT [dbo].[categories] ([id], [name]) VALUES (N'5', N'Túi xách')
SET IDENTITY_INSERT [dbo].[orderdetails] ON 

INSERT [dbo].[orderdetails] ([id], [price], [quantity], [orderid], [productid]) VALUES (1, 25000, 2, 4, 1)
SET IDENTITY_INSERT [dbo].[orderdetails] OFF
SET IDENTITY_INSERT [dbo].[orders] ON 

INSERT [dbo].[orders] ([id], [address], [createdate], [username]) VALUES (1, N'TP.HCM', CAST(N'2021-06-06' AS Date), N'hau')
INSERT [dbo].[orders] ([id], [address], [createdate], [username]) VALUES (2, N'Gia Lai', CAST(N'2021-08-06' AS Date), N'tan')
INSERT [dbo].[orders] ([id], [address], [createdate], [username]) VALUES (3, N'TP.HCM', CAST(N'2021-09-06' AS Date), N'tan')
INSERT [dbo].[orders] ([id], [address], [createdate], [username]) VALUES (4, N'123', CAST(N'2021-06-11' AS Date), N'hau')
INSERT [dbo].[orders] ([id], [address], [createdate], [username]) VALUES (5, N'123', CAST(N'2021-06-11' AS Date), N'hau')
INSERT [dbo].[orders] ([id], [address], [createdate], [username]) VALUES (6, N'123', CAST(N'2021-06-12' AS Date), N'hau')
INSERT [dbo].[orders] ([id], [address], [createdate], [username]) VALUES (7, N'123', CAST(N'2021-06-13' AS Date), N'hau')
INSERT [dbo].[orders] ([id], [address], [createdate], [username]) VALUES (8, N'123', CAST(N'2021-06-13' AS Date), N'hau')
INSERT [dbo].[orders] ([id], [address], [createdate], [username]) VALUES (9, N'123', CAST(N'2021-06-13' AS Date), N'admin')
INSERT [dbo].[orders] ([id], [address], [createdate], [username]) VALUES (10, N'123', CAST(N'2021-06-13' AS Date), N'hau')
INSERT [dbo].[orders] ([id], [address], [createdate], [username]) VALUES (11, N'123', CAST(N'2021-06-13' AS Date), N'hau')
INSERT [dbo].[orders] ([id], [address], [createdate], [username]) VALUES (12, N'123', CAST(N'2021-06-13' AS Date), N'hau')
INSERT [dbo].[orders] ([id], [address], [createdate], [username]) VALUES (13, N'123', CAST(N'2021-06-13' AS Date), N'khanh')
INSERT [dbo].[orders] ([id], [address], [createdate], [username]) VALUES (14, N'123', CAST(N'2021-06-13' AS Date), N'hau')
INSERT [dbo].[orders] ([id], [address], [createdate], [username]) VALUES (15, N'123', CAST(N'2021-06-13' AS Date), N'khanh')
INSERT [dbo].[orders] ([id], [address], [createdate], [username]) VALUES (16, N'123', CAST(N'2021-06-14' AS Date), N'Khanh')
INSERT [dbo].[orders] ([id], [address], [createdate], [username]) VALUES (17, N'123', CAST(N'2021-06-14' AS Date), N'hau')
SET IDENTITY_INSERT [dbo].[orders] OFF
SET IDENTITY_INSERT [dbo].[products] ON 

INSERT [dbo].[products] ([id], [available], [createdate], [image], [name], [price], [categoryid]) VALUES (1, 1, CAST(N'2000-01-01' AS Date), N'1.jpg', N'Áo Monogram ', 25000, N'2')
INSERT [dbo].[products] ([id], [available], [createdate], [image], [name], [price], [categoryid]) VALUES (2, 1, CAST(N'2000-01-01' AS Date), N'2.jpg', N'Áo Haro Toco', 10000, N'2')
INSERT [dbo].[products] ([id], [available], [createdate], [image], [name], [price], [categoryid]) VALUES (3, 1, CAST(N'2000-01-01' AS Date), N'3.jpg', N'Áo Gogomo', 60000, N'2')
INSERT [dbo].[products] ([id], [available], [createdate], [image], [name], [price], [categoryid]) VALUES (4, 1, CAST(N'2000-01-01' AS Date), N'4.jpg', N'Áo Soxo Moko', 78000, N'2')
INSERT [dbo].[products] ([id], [available], [createdate], [image], [name], [price], [categoryid]) VALUES (5, 1, CAST(N'2000-01-01' AS Date), N'5.jpg', N'Quan Jogi', 86000, N'1')
INSERT [dbo].[products] ([id], [available], [createdate], [image], [name], [price], [categoryid]) VALUES (6, 1, CAST(N'2000-01-01' AS Date), N'6.jpg', N'Quan Telex', 40000, N'1')
INSERT [dbo].[products] ([id], [available], [createdate], [image], [name], [price], [categoryid]) VALUES (7, 1, CAST(N'2000-01-01' AS Date), N'7.jpg', N'Quan Hanzi', 77000, N'1')
INSERT [dbo].[products] ([id], [available], [createdate], [image], [name], [price], [categoryid]) VALUES (8, 1, CAST(N'2000-01-01' AS Date), N'8.jpg', N'Quan Jenx', 61000, N'1')
INSERT [dbo].[products] ([id], [available], [createdate], [image], [name], [price], [categoryid]) VALUES (9, 1, CAST(N'2000-01-01' AS Date), N'9.jpg', N'Áo khoác XML', 80000, N'3')
INSERT [dbo].[products] ([id], [available], [createdate], [image], [name], [price], [categoryid]) VALUES (10, 1, CAST(N'2000-01-01' AS Date), N'10.jpg', N'Áo khoác Cool', 74000, N'3')
INSERT [dbo].[products] ([id], [available], [createdate], [image], [name], [price], [categoryid]) VALUES (11, NULL, CAST(N'2000-01-01' AS Date), N'11.jpg', N'Áo khoác Hologram', 62000, N'3')
INSERT [dbo].[products] ([id], [available], [createdate], [image], [name], [price], [categoryid]) VALUES (12, NULL, CAST(N'2000-01-01' AS Date), N'12.jpg', N'Áo khoác Holo', 51000, N'3')
SET IDENTITY_INSERT [dbo].[products] OFF
ALTER TABLE [dbo].[orderdetails]  WITH CHECK ADD  CONSTRAINT [FKaltatpxipsjtcih4d1h6bn0xr] FOREIGN KEY([productid])
REFERENCES [dbo].[products] ([id])
GO
ALTER TABLE [dbo].[orderdetails] CHECK CONSTRAINT [FKaltatpxipsjtcih4d1h6bn0xr]
GO
ALTER TABLE [dbo].[orderdetails]  WITH CHECK ADD  CONSTRAINT [FKj4gc2ja2otvwemf4rho2lp3s8] FOREIGN KEY([orderid])
REFERENCES [dbo].[orders] ([id])
GO
ALTER TABLE [dbo].[orderdetails] CHECK CONSTRAINT [FKj4gc2ja2otvwemf4rho2lp3s8]
GO
ALTER TABLE [dbo].[orders]  WITH CHECK ADD  CONSTRAINT [FKk3cjfcgb621qhahps1tre43e4] FOREIGN KEY([username])
REFERENCES [dbo].[accounts] ([username])
GO
ALTER TABLE [dbo].[orders] CHECK CONSTRAINT [FKk3cjfcgb621qhahps1tre43e4]
GO
ALTER TABLE [dbo].[products]  WITH CHECK ADD  CONSTRAINT [FK1krrsjgcawsfg8k8u4hm5gi8q] FOREIGN KEY([categoryid])
REFERENCES [dbo].[categories] ([id])
GO
ALTER TABLE [dbo].[products] CHECK CONSTRAINT [FK1krrsjgcawsfg8k8u4hm5gi8q]
GO
