USE [NFLWeatherAppDB]
GO
  
INSERT [dbo].[Game] ([GameID], [HomePoints], [AwayPoints], [HomeCompletions], [AwayCompletions], [HomeAttempts], [AwayAttempts], [HomeYards], [AwayYards], [HomeTD], [AwayTD], [HomeINT], [AwayINT]) VALUES (4, 24, 28, 20, 25, 35, 30, 280, 320, 2, 3, 2, 1)
GO
INSERT [dbo].[Game] ([GameID], [HomePoints], [AwayPoints], [HomeCompletions], [AwayCompletions], [HomeAttempts], [AwayAttempts], [HomeYards], [AwayYards], [HomeTD], [AwayTD], [HomeINT], [AwayINT]) VALUES (5, 17, 14, 15, 12, 30, 28, 210, 200, 1, 2, 1, 1)
GO
INSERT [dbo].[Game] ([GameID], [HomePoints], [AwayPoints], [HomeCompletions], [AwayCompletions], [HomeAttempts], [AwayAttempts], [HomeYards], [AwayYards], [HomeTD], [AwayTD], [HomeINT], [AwayINT]) VALUES (6, 31, 21, 25, 18, 40, 30, 350, 270, 3, 2, 0, 1)
GO
INSERT [dbo].[Game] ([GameID], [HomePoints], [AwayPoints], [HomeCompletions], [AwayCompletions], [HomeAttempts], [AwayAttempts], [HomeYards], [AwayYards], [HomeTD], [AwayTD], [HomeINT], [AwayINT]) VALUES (7, 28, 17, 22, 15, 35, 25, 320, 210, 4, 1, 0, 2)
GO
INSERT [dbo].[Game] ([GameID], [HomePoints], [AwayPoints], [HomeCompletions], [AwayCompletions], [HomeAttempts], [AwayAttempts], [HomeYards], [AwayYards], [HomeTD], [AwayTD], [HomeINT], [AwayINT]) VALUES (8, 21, 24, 18, 20, 30, 35, 250, 280, 2, 3, 1, 2)
GO
INSERT [dbo].[Game] ([GameID], [HomePoints], [AwayPoints], [HomeCompletions], [AwayCompletions], [HomeAttempts], [AwayAttempts], [HomeYards], [AwayYards], [HomeTD], [AwayTD], [HomeINT], [AwayINT]) VALUES (9, 35, 10, 28, 10, 40, 20, 380, 180, 4, 1, 1, 0)
GO
INSERT [dbo].[Game] ([GameID], [HomePoints], [AwayPoints], [HomeCompletions], [AwayCompletions], [HomeAttempts], [AwayAttempts], [HomeYards], [AwayYards], [HomeTD], [AwayTD], [HomeINT], [AwayINT]) VALUES (10, 14, 28, 12, 20, 28, 35, 200, 250, 1, 3, 1, 1)
GO
INSERT [dbo].[Game] ([GameID], [HomePoints], [AwayPoints], [HomeCompletions], [AwayCompletions], [HomeAttempts], [AwayAttempts], [HomeYards], [AwayYards], [HomeTD], [AwayTD], [HomeINT], [AwayINT]) VALUES (11, 24, 31, 20, 25, 35, 40, 280, 350, 2, 3, 2, 0)
GO
INSERT [dbo].[Game] ([GameID], [HomePoints], [AwayPoints], [HomeCompletions], [AwayCompletions], [HomeAttempts], [AwayAttempts], [HomeYards], [AwayYards], [HomeTD], [AwayTD], [HomeINT], [AwayINT]) VALUES (12, 21, 28, 18, 22, 30, 35, 250, 320, 2, 4, 1, 1)
GO
INSERT [dbo].[Game] ([GameID], [HomePoints], [AwayPoints], [HomeCompletions], [AwayCompletions], [HomeAttempts], [AwayAttempts], [HomeYards], [AwayYards], [HomeTD], [AwayTD], [HomeINT], [AwayINT]) VALUES (13, 17, 35, 15, 28, 30, 40, 210, 380, 1, 4, 1, 0)
GO
INSERT [dbo].[GameTeam] ([GameID], [TeamID], [HoA]) VALUES (4, 1, N'H')
GO
INSERT [dbo].[GameTeam] ([GameID], [TeamID], [HoA]) VALUES (4, 4, N'A')
GO
INSERT [dbo].[GameTeam] ([GameID], [TeamID], [HoA]) VALUES (5, 5, N'A')
GO
INSERT [dbo].[GameTeam] ([GameID], [TeamID], [HoA]) VALUES (5, 9, N'H')
GO
INSERT [dbo].[GameTeam] ([GameID], [TeamID], [HoA]) VALUES (6, 1, N'H')
GO
INSERT [dbo].[GameTeam] ([GameID], [TeamID], [HoA]) VALUES (6, 6, N'A')
GO
INSERT [dbo].[GameTeam] ([GameID], [TeamID], [HoA]) VALUES (7, 4, N'H')
GO
INSERT [dbo].[GameTeam] ([GameID], [TeamID], [HoA]) VALUES (7, 10, N'A')
GO
INSERT [dbo].[GameTeam] ([GameID], [TeamID], [HoA]) VALUES (8, 4, N'A')
GO
INSERT [dbo].[GameTeam] ([GameID], [TeamID], [HoA]) VALUES (8, 6, N'H')
GO
INSERT [dbo].[GameTeam] ([GameID], [TeamID], [HoA]) VALUES (9, 1, N'H')
GO
INSERT [dbo].[GameTeam] ([GameID], [TeamID], [HoA]) VALUES (9, 2, N'A')
GO
INSERT [dbo].[GameTeam] ([GameID], [TeamID], [HoA]) VALUES (10, 5, N'H')
GO
INSERT [dbo].[GameTeam] ([GameID], [TeamID], [HoA]) VALUES (10, 7, N'A')
GO
INSERT [dbo].[GameTeam] ([GameID], [TeamID], [HoA]) VALUES (11, 2, N'H')
GO
INSERT [dbo].[GameTeam] ([GameID], [TeamID], [HoA]) VALUES (11, 6, N'A')
GO
INSERT [dbo].[GameTeam] ([GameID], [TeamID], [HoA]) VALUES (12, 7, N'A')
GO
INSERT [dbo].[GameTeam] ([GameID], [TeamID], [HoA]) VALUES (12, 9, N'H')
GO
INSERT [dbo].[GameTeam] ([GameID], [TeamID], [HoA]) VALUES (13, 3, N'H')
GO
INSERT [dbo].[GameTeam] ([GameID], [TeamID], [HoA]) VALUES (13, 8, N'A')
GO
INSERT [dbo].[Player] ([TeamID], [PlayerID], [FirstName], [LastName], [JerseyNum], [Height], [Weight], [College]) VALUES (1, 1, N'Tom', N'Brady', 12, N'6''4"', 225, N'Michigan')
GO
INSERT [dbo].[Player] ([TeamID], [PlayerID], [FirstName], [LastName], [JerseyNum], [Height], [Weight], [College]) VALUES (2, 2, N'Patrick', N'Mahomes', 15, N'6''3"', 230, N'Texas Tech')
GO
INSERT [dbo].[Player] ([TeamID], [PlayerID], [FirstName], [LastName], [JerseyNum], [Height], [Weight], [College]) VALUES (3, 3, N'Aaron', N'Rodgers', 12, N'6''2"', 225, N'California')
GO
INSERT [dbo].[Player] ([TeamID], [PlayerID], [FirstName], [LastName], [JerseyNum], [Height], [Weight], [College]) VALUES (4, 4, N'Derrick', N'Henry', 22, N'6''3"', 247, N'Alabama')
GO
INSERT [dbo].[Player] ([TeamID], [PlayerID], [FirstName], [LastName], [JerseyNum], [Height], [Weight], [College]) VALUES (5, 5, N'Christian', N'McCaffrey', 22, N'5''11"', 205, N'Stanford')
GO
INSERT [dbo].[Player] ([TeamID], [PlayerID], [FirstName], [LastName], [JerseyNum], [Height], [Weight], [College]) VALUES (6, 6, N'DeAndre', N'Hopkins', 10, N'6''1"', 212, N'Clemson')
GO
INSERT [dbo].[Player] ([TeamID], [PlayerID], [FirstName], [LastName], [JerseyNum], [Height], [Weight], [College]) VALUES (3, 7, N'Davante', N'Adams', 17, N'6''1"', 215, N'Fresno State')
GO
INSERT [dbo].[Player] ([TeamID], [PlayerID], [FirstName], [LastName], [JerseyNum], [Height], [Weight], [College]) VALUES (7, 8, N'T.J.', N'Watt', 90, N'6''4"', 252, N'Wisconsin')
GO
INSERT [dbo].[Player] ([TeamID], [PlayerID], [FirstName], [LastName], [JerseyNum], [Height], [Weight], [College]) VALUES (8, 9, N'Aaron', N'Donald', 99, N'6''1"', 280, N'Pittsburgh')
GO
INSERT [dbo].[Player] ([TeamID], [PlayerID], [FirstName], [LastName], [JerseyNum], [Height], [Weight], [College]) VALUES (9, 10, N'Jalen', N'Ramsey', 20, N'6''1"', 208, N'Florida State')
GO
INSERT [dbo].[Team] ([TeamID], [TeamName], [City], [Location], [Division]) VALUES (1, N'New England Patriots', N'Foxborough', N'Massachusetts', N'AFC East')
GO
INSERT [dbo].[Team] ([TeamID], [TeamName], [City], [Location], [Division]) VALUES (2, N'San Francisco 49ers', N'Santa Clara', N'California', N'NFC West')
GO
INSERT [dbo].[Team] ([TeamID], [TeamName], [City], [Location], [Division]) VALUES (3, N'Dallas Cowboys', N'Dallas', N'Texas', N'NFC East')
GO
INSERT [dbo].[Team] ([TeamID], [TeamName], [City], [Location], [Division]) VALUES (4, N'Buffalo Bills', N'Buffalo', N'New York', N'AFC East')
GO
INSERT [dbo].[Team] ([TeamID], [TeamName], [City], [Location], [Division]) VALUES (5, N'Seattle Seahawks', N'Seattle', N'Washington', N'NFC West')
GO
INSERT [dbo].[Team] ([TeamID], [TeamName], [City], [Location], [Division]) VALUES (6, N'New Orleans Saints', N'New Orleans', N'Louisiana', N'NFC South')
GO
INSERT [dbo].[Team] ([TeamID], [TeamName], [City], [Location], [Division]) VALUES (7, N'Baltimore Ravens', N'Baltimore', N'Maryland', N'AFC North')
GO
INSERT [dbo].[Team] ([TeamID], [TeamName], [City], [Location], [Division]) VALUES (8, N'Philadelphia Eagles', N'Philadelphia', N'Pennsylvania', N'NFC East')
GO
INSERT [dbo].[Team] ([TeamID], [TeamName], [City], [Location], [Division]) VALUES (9, N'Chicago Bears', N'Chicago', N'Illinois', N'NFC North')
GO
INSERT [dbo].[Team] ([TeamID], [TeamName], [City], [Location], [Division]) VALUES (10, N'Las Vegas Raiders', N'Las Vegas', N'Nevada', N'AFC West')
GO
INSERT [dbo].[TeamFav] ([UserID], [TeamID]) VALUES (1, 1)
GO
INSERT [dbo].[TeamFav] ([UserID], [TeamID]) VALUES (2, 2)
GO
INSERT [dbo].[TeamFav] ([UserID], [TeamID]) VALUES (3, 3)
GO
INSERT [dbo].[TeamFav] ([UserID], [TeamID]) VALUES (4, 4)
GO
INSERT [dbo].[TeamFav] ([UserID], [TeamID]) VALUES (5, 5)
GO
INSERT [dbo].[TeamFav] ([UserID], [TeamID]) VALUES (6, 6)
GO
INSERT [dbo].[TeamFav] ([UserID], [TeamID]) VALUES (7, 7)
GO
INSERT [dbo].[TeamFav] ([UserID], [TeamID]) VALUES (8, 8)
GO
INSERT [dbo].[TeamFav] ([UserID], [TeamID]) VALUES (9, 9)
GO
INSERT [dbo].[TeamFav] ([UserID], [TeamID]) VALUES (10, 10)
GO
INSERT [dbo].[User] ([UserID], [FirstName], [LastName], [DoB]) VALUES (1, N'John', N'Doe', CAST(N'1990-05-15' AS Date))
GO
INSERT [dbo].[User] ([UserID], [FirstName], [LastName], [DoB]) VALUES (2, N'Jane', N'Smith', CAST(N'1985-12-30' AS Date))
GO
INSERT [dbo].[User] ([UserID], [FirstName], [LastName], [DoB]) VALUES (3, N'Michael', N'Johnson', CAST(N'1993-08-22' AS Date))
GO
INSERT [dbo].[User] ([UserID], [FirstName], [LastName], [DoB]) VALUES (4, N'Emily', N'Brown', CAST(N'1988-04-10' AS Date))
GO
INSERT [dbo].[User] ([UserID], [FirstName], [LastName], [DoB]) VALUES (5, N'Christopher', N'Davis', CAST(N'1995-11-03' AS Date))
GO
INSERT [dbo].[User] ([UserID], [FirstName], [LastName], [DoB]) VALUES (6, N'Jessica', N'Wilson', CAST(N'1991-09-28' AS Date))
GO
INSERT [dbo].[User] ([UserID], [FirstName], [LastName], [DoB]) VALUES (7, N'David', N'Martinez', CAST(N'1987-07-17' AS Date))
GO
INSERT [dbo].[User] ([UserID], [FirstName], [LastName], [DoB]) VALUES (8, N'Sarah', N'Anderson', CAST(N'1992-02-05' AS Date))
GO
INSERT [dbo].[User] ([UserID], [FirstName], [LastName], [DoB]) VALUES (9, N'Matthew', N'Taylor', CAST(N'1989-06-20' AS Date))
GO
INSERT [dbo].[User] ([UserID], [FirstName], [LastName], [DoB]) VALUES (10, N'Laura', N'Thomas', CAST(N'1994-10-12' AS Date))
GO
ALTER TABLE [dbo].[GameTeam]  WITH CHECK ADD  CONSTRAINT [FK_GameTeam_Game] FOREIGN KEY([GameID])
REFERENCES [dbo].[Game] ([GameID])
GO
ALTER TABLE [dbo].[GameTeam] CHECK CONSTRAINT [FK_GameTeam_Game]
GO
ALTER TABLE [dbo].[GameTeam]  WITH CHECK ADD  CONSTRAINT [FK_GameTeam_Team] FOREIGN KEY([TeamID])
REFERENCES [dbo].[Team] ([TeamID])
GO
ALTER TABLE [dbo].[GameTeam] CHECK CONSTRAINT [FK_GameTeam_Team]
GO
ALTER TABLE [dbo].[Player]  WITH CHECK ADD  CONSTRAINT [FK_Player_Team] FOREIGN KEY([TeamID])
REFERENCES [dbo].[Team] ([TeamID])
GO
ALTER TABLE [dbo].[Player] CHECK CONSTRAINT [FK_Player_Team]
GO
ALTER TABLE [dbo].[PlayerFav]  WITH CHECK ADD  CONSTRAINT [FK_PlayerFav_Player] FOREIGN KEY([PlayerID])
REFERENCES [dbo].[Player] ([PlayerID])
GO
ALTER TABLE [dbo].[PlayerFav] CHECK CONSTRAINT [FK_PlayerFav_Player]
GO
ALTER TABLE [dbo].[PlayerFav]  WITH CHECK ADD  CONSTRAINT [FK_PlayerFav_User] FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([UserID])
GO
ALTER TABLE [dbo].[PlayerFav] CHECK CONSTRAINT [FK_PlayerFav_User]
GO
ALTER TABLE [dbo].[TeamFav]  WITH CHECK ADD  CONSTRAINT [FK_TeamFav_Team] FOREIGN KEY([TeamID])
REFERENCES [dbo].[Team] ([TeamID])
GO
ALTER TABLE [dbo].[TeamFav] CHECK CONSTRAINT [FK_TeamFav_Team]
GO
ALTER TABLE [dbo].[TeamFav]  WITH CHECK ADD  CONSTRAINT [FK_TeamFav_User] FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([UserID])
GO
ALTER TABLE [dbo].[TeamFav] CHECK CONSTRAINT [FK_TeamFav_User]
GO
