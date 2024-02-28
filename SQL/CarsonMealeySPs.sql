create or alter proc spTeamGetBasicStats
@TeamID int
AS
BEGIN
select T.TeamID, T.TeamName, T.City, T.Location, T.Division, sum(G.HomePoints + G.AwayPoints) as "Points", sum(HomeYards + AwayYards) as "Yards"
from Team as T
inner join GameTeam as GT on GT.TeamID = T.TeamID
inner join Game as G on GT.GameID = G.GameID
where T.TeamID=@TeamID
GROUP BY T.TeamID, T.TeamName, T.City, T.Location, T.Division
END;
GO
/*
Exec spTeamGetBasicStats 2
GO
*/

create or alter proc spTeamGetAdvancedStats
@TeamID int
AS 
BEGIN
select T.TeamID, T.TeamName, T.City, T.Location, T.Division,
ROUND(CAST(SUM (G.HomePoints + G.AwayPoints) AS FLOAT) / NULLIF(CAST(COUNT(G.GameID) AS INT) ,0) ,2) AS "Points Per Game", --Used ChatGPT 
ROUND(CAST(SUM (G.HomeYards + G.AwayYards) AS FLOAT) / NULLIF(CAST(COUNT(G.GameID) AS INT) ,0) ,2) AS "Yards Per Game" --Copied previous line of code and modified for yards
from Team as T
inner join GameTeam as GT on T.TeamID = GT.TeamID
inner join Game as G on GT.GameID = G.GameID
where T.TeamID=@TeamID
GROUP BY T.TeamID, T.TeamName, T.City, T.Location, T.Division
END;
GO
/*
Exec spTeamGetAdvancedStats 2
GO
*/

