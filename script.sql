USE [RedisExampleDB]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 20.09.2020 15:04:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[id] [int] NULL,
	[name] [varchar](50) NULL,
	[price] [varchar](50) NULL,
	[category] [varchar](50) NULL
) ON [PRIMARY]
GO
INSERT [dbo].[Products] ([id], [name], [price], [category]) VALUES (951, N'Water - Perrier', N'$961,30', N'n/a')
INSERT [dbo].[Products] ([id], [name], [price], [category]) VALUES (954, N'Dried Apple', N'$375,54', N'Health Care')
INSERT [dbo].[Products] ([id], [name], [price], [category]) VALUES (955, N'Cheese - Grie Des Champ', N'$561,92', N'Finance')
INSERT [dbo].[Products] ([id], [name], [price], [category]) VALUES (956, N'Beef - Cow Feet Split', N'$178,32', N'Consumer Durables')
INSERT [dbo].[Products] ([id], [name], [price], [category]) VALUES (958, N'Greens Mustard', N'$566,85', N'Public Utilities')
INSERT [dbo].[Products] ([id], [name], [price], [category]) VALUES (959, N'Compound - Passion Fruit', N'$371,23', N'Finance')
INSERT [dbo].[Products] ([id], [name], [price], [category]) VALUES (960, N'Lettuce - Lolla Rosa', N'$947,16', N'Health Care')
INSERT [dbo].[Products] ([id], [name], [price], [category]) VALUES (961, N'Muffin Batt - Carrot Spice', N'$217,79', N'n/a')
INSERT [dbo].[Products] ([id], [name], [price], [category]) VALUES (962, N'Pepper - Paprika, Spanish', N'$23,73', N'Consumer Services')
INSERT [dbo].[Products] ([id], [name], [price], [category]) VALUES (963, N'Tomatoes - Cherry', N'$848,49', N'Basic Industries')
INSERT [dbo].[Products] ([id], [name], [price], [category]) VALUES (964, N'Beer - Rickards Red', N'$788,01', N'Transportation')
INSERT [dbo].[Products] ([id], [name], [price], [category]) VALUES (965, N'Wine - Red, Metus Rose', N'$415,14', N'n/a')
INSERT [dbo].[Products] ([id], [name], [price], [category]) VALUES (966, N'Lady Fingers', N'$331,52', N'Public Utilities')
INSERT [dbo].[Products] ([id], [name], [price], [category]) VALUES (967, N'Crab Brie In Phyllo', N'$388,09', N'Capital Goods')
INSERT [dbo].[Products] ([id], [name], [price], [category]) VALUES (968, N'Rice - Wild', N'$814,61', N'Health Care')
INSERT [dbo].[Products] ([id], [name], [price], [category]) VALUES (969, N'Soup - Knorr, French Onion', N'$66,36', N'Miscellaneous')
INSERT [dbo].[Products] ([id], [name], [price], [category]) VALUES (970, N'Beef - Eye Of Round', N'$210,68', N'Consumer Services')
INSERT [dbo].[Products] ([id], [name], [price], [category]) VALUES (971, N'Bonito Flakes - Toku Katsuo', N'$745,87', N'n/a')
INSERT [dbo].[Products] ([id], [name], [price], [category]) VALUES (972, N'Wine - Cotes Du Rhone Parallele', N'$207,18', N'Consumer Services')
INSERT [dbo].[Products] ([id], [name], [price], [category]) VALUES (973, N'Sugar - White Packet', N'$570,88', N'n/a')
INSERT [dbo].[Products] ([id], [name], [price], [category]) VALUES (974, N'Russian Prince', N'$28,70', N'Consumer Services')
INSERT [dbo].[Products] ([id], [name], [price], [category]) VALUES (975, N'Cucumber - English', N'$515,15', N'Transportation')
INSERT [dbo].[Products] ([id], [name], [price], [category]) VALUES (976, N'Myers Planters Punch', N'$926,54', N'n/a')
INSERT [dbo].[Products] ([id], [name], [price], [category]) VALUES (977, N'Soup - Knorr, Classic Can. Chili', N'$797,14', N'Consumer Services')
INSERT [dbo].[Products] ([id], [name], [price], [category]) VALUES (978, N'Wine - Dubouef Macon - Villages', N'$257,03', N'Finance')
INSERT [dbo].[Products] ([id], [name], [price], [category]) VALUES (979, N'Wine - Port Late Bottled Vintage', N'$311,70', N'Technology')
INSERT [dbo].[Products] ([id], [name], [price], [category]) VALUES (980, N'Vinegar - Cider', N'$417,99', N'Finance')
INSERT [dbo].[Products] ([id], [name], [price], [category]) VALUES (981, N'Appetizer - Veg Assortment', N'$706,03', N'Public Utilities')
INSERT [dbo].[Products] ([id], [name], [price], [category]) VALUES (982, N'Apricots Fresh', N'$727,03', N'Basic Industries')
INSERT [dbo].[Products] ([id], [name], [price], [category]) VALUES (983, N'Devonshire Cream', N'$503,63', N'Finance')
INSERT [dbo].[Products] ([id], [name], [price], [category]) VALUES (984, N'Chicken - Livers', N'$951,44', N'n/a')
INSERT [dbo].[Products] ([id], [name], [price], [category]) VALUES (985, N'Trout - Hot Smkd, Dbl Fillet', N'$692,40', N'Health Care')
INSERT [dbo].[Products] ([id], [name], [price], [category]) VALUES (986, N'Beets - Pickled', N'$484,31', N'Health Care')
INSERT [dbo].[Products] ([id], [name], [price], [category]) VALUES (987, N'Beef - Baby, Liver', N'$167,15', N'Finance')
INSERT [dbo].[Products] ([id], [name], [price], [category]) VALUES (988, N'Pasta - Linguini, Dry', N'$540,71', N'Technology')
INSERT [dbo].[Products] ([id], [name], [price], [category]) VALUES (989, N'Cheese - Wine', N'$9,88', N'Technology')
INSERT [dbo].[Products] ([id], [name], [price], [category]) VALUES (990, N'Sugar - Brown, Individual', N'$584,17', N'Energy')
INSERT [dbo].[Products] ([id], [name], [price], [category]) VALUES (991, N'Godiva White Chocolate', N'$548,25', N'n/a')
INSERT [dbo].[Products] ([id], [name], [price], [category]) VALUES (992, N'Bread - Bagels, Mini', N'$877,19', N'Health Care')
INSERT [dbo].[Products] ([id], [name], [price], [category]) VALUES (993, N'Crackers - Melba Toast', N'$155,56', N'Finance')
INSERT [dbo].[Products] ([id], [name], [price], [category]) VALUES (994, N'Tea - Earl Grey', N'$415,83', N'Public Utilities')
INSERT [dbo].[Products] ([id], [name], [price], [category]) VALUES (995, N'Durian Fruit', N'$844,30', N'Finance')
INSERT [dbo].[Products] ([id], [name], [price], [category]) VALUES (996, N'Walkers Special Old Whiskey', N'$558,68', N'n/a')
INSERT [dbo].[Products] ([id], [name], [price], [category]) VALUES (997, N'Mushroom - Portebello', N'$953,35', N'Technology')
INSERT [dbo].[Products] ([id], [name], [price], [category]) VALUES (998, N'Pastry - French Mini Assorted', N'$501,02', N'Capital Goods')
INSERT [dbo].[Products] ([id], [name], [price], [category]) VALUES (999, N'Napkin - Cocktail,beige 2 - Ply', N'$126,71', N'Technology')
INSERT [dbo].[Products] ([id], [name], [price], [category]) VALUES (1000, N'Wine - Magnotta - Pinot Gris Sr', N'$416,61', N'Public Utilities')
GO
