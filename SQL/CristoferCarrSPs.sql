USE [NFLWeatherAppDB]
GO

/****** Object:  StoredProcedure [dbo].[spPlayerGetBasicStats]    Script Date: 3/26/2024 2:49:33 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE OR ALTER     proc [dbo].[spPlayerGetBasicStats]
@PlayerID int
AS
BEGIN
select P.PlayerID, P.FirstName, P.LastName, P.JerseyNum, sum(G.HomeYards + G.AwayYards) as "Yards", sum(G.HomeCompletions + G.AwayCompletions) as 'Completions', SUM(G.HomeAttempts + G.AwayAttempts) as 'Attempts', sum(G.HomeTD + G.AwayTD) as 'TDs', sum(G.HomeINT + G.AwayINT) as 'INTs', P.Height, P.Weight, P.College, T.TeamID
from Player P inner join Team T on P.TeamID=T.TeamID 
inner join GameTeam GT on T.TeamID=GT.TeamID 
inner join Game G on G.GameID=GT.GameID
where PlayerID=@PlayerID
GROUP BY P.PlayerID, P.FirstName, P.LastName, P.JerseyNum, P.Height, P.Weight, P.College, T.TeamID;
END;
GO

USE [NFLWeatherAppDB]
GO

/****** Object:  StoredProcedure [dbo].[spPlayerGetAdvanceStats]    Script Date: 3/26/2024 2:47:30 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO



CREATE OR ALTER       proc [dbo].[spPlayerGetAdvanceStats]
@PlayerID int
AS
BEGIN
select P.PlayerID, P.FirstName, P.LastName, P.JerseyNum,  
ROUND(CAST(SUM(G.HomeYards + G.AwayYards) AS FLOAT) / NULLIF(CAST(SUM(G.HomeAttempts + G.AwayAttempts) AS FLOAT), 0), 2) AS 'YardsPerAttempt',
ROUND((CAST(SUM(G.HomeCompletions + G.AwayCompletions) AS FLOAT) / NULLIF(CAST(SUM(G.HomeAttempts + G.AwayAttempts) AS FLOAT), 0)) * 100, 2) AS 'CompletionPercentage',
 ROUND(CAST(SUM(G.HomeTD + G.AwayTD) AS FLOAT) / NULLIF(CAST(SUM(G.HomeINT + G.AwayINT) AS FLOAT), 0), 2) AS 'TDINTRatio'
from Player P inner join Team T on P.TeamID=T.TeamID 
inner join GameTeam GT on T.TeamID=GT.TeamID 
inner join Game G on G.GameID=GT.GameID
where PlayerID=@PlayerID
GROUP BY P.PlayerID, P.FirstName, P.LastName, P.JerseyNum;
END;
GO
