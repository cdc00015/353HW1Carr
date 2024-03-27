CREATE PROCEDURE [dbo].[spShowFavoritePlayer]
    @UserID int
AS
BEGIN
    SELECT p.FirstName, p.LastName, pf.UserID, pf.PlayerID
    FROM Player p
    INNER JOIN PlayerFav pf ON p.PlayerID = pf.PlayerID
    WHERE pf.UserID = @UserID;
END;
GO
/*
EXEC spShowFavoritePlayer 1
GO
*/

CREATE PROCEDURE [dbo].[spShowFavoriteTeam]
    @UserID int
AS
BEGIN
    SELECT t.TeamName, tf.UserID, tf.TeamID
    FROM Team t
    INNER JOIN TeamFav tf ON t.TeamID = tf.TeamID
    WHERE tf.UserID = @UserID;
END;
GO
/*
EXEC spShowFavoriteTeam 1
GO
*/
