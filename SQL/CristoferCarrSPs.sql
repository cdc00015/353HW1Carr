create or alter proc spPlayerGetBasicStats
@PlayerID int
AS
BEGIN
select P.PlayerID, P.FirstName, P.LastName, P.JerseyNum, sum(G.HomeYards + G.AwayYards) as "Yards", sum(G.HomeCompletions + G.AwayCompletions) as 'Completeions', SUM(G.HomeAttempts + G.AwayAttempts) as 'Attempts', sum(G.HomeTD + G.AwayTD) as 'TDs', sum(G.HomeINT + G.AwayINT) as 'INTs'
from Player P inner join Team T on P.TeamID=T.TeamID 
inner join GameTeam GT on T.TeamID=GT.TeamID 
inner join Game G on G.GameID=GT.GameID
where PlayerID=@PlayerID
GROUP BY P.PlayerID, P.FirstName, P.LastName, P.JerseyNum;
END;
GO
/*
Exec spPlayerGetBasicStats 2
GO
*/

create or alter proc spPlayerGetAdvanceStats
@PlayerID int
AS
BEGIN
select P.PlayerID, P.FirstName, P.LastName, P.JerseyNum,  
ROUND(CAST(SUM(G.HomeYards + G.AwayYards) AS FLOAT) / NULLIF(CAST(SUM(G.HomeAttempts + G.AwayAttempts) AS FLOAT), 0), 2) AS 'Yards Per Attempt',
ROUND((CAST(SUM(G.HomeCompletions + G.AwayCompletions) AS FLOAT) / NULLIF(CAST(SUM(G.HomeAttempts + G.AwayAttempts) AS FLOAT), 0)) * 100, 2) AS 'Completion Percentage',
 ROUND(CAST(SUM(G.HomeTD + G.AwayTD) AS FLOAT) / NULLIF(CAST(SUM(G.HomeINT + G.AwayINT) AS FLOAT), 0), 2) AS 'TD/INT Ratio'
from Player P inner join Team T on P.TeamID=T.TeamID 
inner join GameTeam GT on T.TeamID=GT.TeamID 
inner join Game G on G.GameID=GT.GameID
where PlayerID=@PlayerID
GROUP BY P.PlayerID, P.FirstName, P.LastName, P.JerseyNum;
END;
GO
/*
Exec spPlayerGetAdvanceStats 2
GO
*/
