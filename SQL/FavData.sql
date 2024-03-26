INSERT INTO [dbo].[PlayerFav] ([UserID], [PlayerID]) VALUES 
(1, 1),
(1, 3)
GO

INSERT INTO [dbo].[PlayerFav] ([UserID], [PlayerID]) VALUES 
(2, 2),
(2, 4),
(2, 5)
GO

INSERT INTO [dbo].[PlayerFav] ([UserID], [PlayerID]) VALUES 
(3, 1),
(3, 3),
(3, 6),
(3, 7)
GO

INSERT INTO [dbo].[PlayerFav] ([UserID], [PlayerID]) VALUES 
(4, 5),
(4, 8)
GO

INSERT INTO [dbo].[PlayerFav] ([UserID], [PlayerID]) VALUES 
(5, 2),
(5, 4),
(5, 6)
GO

-- Continue this pattern for users 6 through 10
-- Example for user 6 with 4 favorite players
INSERT INTO [dbo].[PlayerFav] ([UserID], [PlayerID]) VALUES 
(6, 3),
(6, 5),
(6, 7),
(6, 9)
GO

-- For User 7
INSERT INTO [dbo].[PlayerFav] ([UserID], [PlayerID]) VALUES 
(7, 2),
(7, 4),
(7, 8)
GO

-- For User 8, assigning 5 favorite players as an example
INSERT INTO [dbo].[PlayerFav] ([UserID], [PlayerID]) VALUES 
(8, 1),
(8, 3),
(8, 5),
(8, 7),
(8, 9)
GO

-- For User 9
INSERT INTO [dbo].[PlayerFav] ([UserID], [PlayerID]) VALUES 
(9, 10),
(9, 8),
(9, 6)
GO

-- For User 10, let's assign 4 favorites
INSERT INTO [dbo].[PlayerFav] ([UserID], [PlayerID]) VALUES 
(10, 5),
(10, 7),
(10, 9),
(10, 2)
GO
