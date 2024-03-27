USE [NFLWeatherAppDB]
GO
INSERT INTO [dbo].[PlayerFav] ([UserID], [PlayerID]) VALUES 
(1, 1), (1, 3),
(2, 2), (2, 4), (2, 5),
(3, 1), (3, 3), (3, 6), (3, 7),
(4, 5), (4, 8),
(5, 2), (5, 4), (5, 6),
-- Continue this pattern for users 6 through 10
-- Example for user 6 with 4 favorite players
(6, 3), (6, 5), (6, 7), (6, 9),
-- For User 7
(7, 2), (7, 4), (7, 8),
-- For User 8, assigning 5 favorite players as an example
(8, 1), (8, 3), (8, 5), (8, 7), (8, 9),
-- For User 9
(9, 10), (9, 8), (9, 6),
-- For User 10, let's assign 4 favorites
(10, 5), (10, 7), (10, 9), (10, 2)
GO
