CREATE PROC spAddFavorite
    @UserID int,
    @PlayerID int = NULL,
    @TeamID int = NULL
AS
BEGIN
    IF @PlayerID IS NOT NULL
    BEGIN
        -- Check if the player already exists in favorites
        IF NOT EXISTS (SELECT 1 FROM PlayerFav WHERE PlayerID = @PlayerID AND UserID = @UserID)
        BEGIN
            INSERT INTO PlayerFav (PlayerID, UserID) VALUES (@PlayerID, @UserID)
            PRINT 'Player added to favorites successfully.'
        END
        ELSE
        BEGIN
            PRINT 'Player is already in favorites.'
        END
    END

    IF @TeamID IS NOT NULL
    BEGIN
        -- Check if the team already exists in favorites
        IF NOT EXISTS (SELECT 1 FROM TeamFav WHERE TeamID = @TeamID AND UserID = @UserID)
        BEGIN
            INSERT INTO TeamFav (TeamID, UserID) VALUES (@TeamID, @UserID)
            PRINT 'Team added to favorites successfully.'
        END
        ELSE
        BEGIN
            PRINT 'Team is already in favorites.'
        END
    END
END;

/*
EXEC spAddFavorite 7, 2, 1
GO
*/

CREATE PROC spShowFavorite
    @UserID int
AS
BEGIN
    -- Retrieve favorite players
    SELECT p.PlayerID, p.FirstName, p.LastName
    FROM Player p
    INNER JOIN PlayerFav pf ON p.PlayerID = pf.PlayerID
    WHERE pf.UserID = @UserID;

    -- Retrieve favorite teams
    SELECT t.TeamID, t.TeamName
    FROM Team t
    INNER JOIN TeamFav tf ON t.TeamID = tf.TeamID
    WHERE tf.UserID = @UserID;
END;

/*
EXEC spShowFavorite 7
GO
*/
