### README for MIST 353: Assignment 3: Merging Ideas and Databases 

---

#### Overview
Upon being grouped together, we first shared our individual assignments with each other and began to discuss similarities and differences. We quickly noticed that two of our three project ideas were extremely similar, so we decided to consolidate our ideas and make a web app that will allow users to search by an NFL player, or team, along with a weather condition to see how they, the player or team, performed under those conditions.

---

#### Stored Procedures 
1. spTeamGetBasicStats (Carson)
- Get the basic stats for an NFL team by using teamID. Used to generate data for a team’s stat page
  - Also very basic stats for team as a whole 
2. spTeamGetAdvancedStats (Carson)
- Get the advanced stats for an NFL team by using teamID. Used to generate data for a team’s stat page	
  - Calculated stats made from the basic stats
3. spPlayerGetBasicStats (Cris)
- Get the basic stats for a player by using playerID. Used to generate data for a player’s stat page
  - How many yards, touchdowns, interceptions, etc.
4. spPlayerGetAdvancedStats (Cris)
- Get the advanced stats for a player by using playerID. Used to generate data for a player’s stat page
  - Uses basic stats and does calculations on them, yards per run, touchdowns per game, etc…
5. spShowFavoritePlayer (Jake)
- Returns the user with a list of their favorite players, takes userid as an input
6. spShowFavoriteTeam (Jake)
- Returns the user with a list of their favorite teams, takes userid as an input

##### Planned SPs 
1. spAddFavorite
- Allows the user to add a player or team to their favorites list


---

## References
[Stored Procedures for SQL Server (W3Schools)](https://www.w3schools.com/sql/sql_stored_procedures.asp)

[Generating DB Creation and Mock Data Scripts (StackOverflow)](https://stackoverflow.com/questions/20542819/how-to-export-all-data-from-table-to-an-insertable-sql-format)

---

### ChatGPT Prompts 
> Can you make some mock data please for this SQL Server table?
>
>```
>CREATE TABLE [dbo].[Player](
>	[TeamID] [int] NULL,
>	[PlayerID] [int] NOT NULL,
>	[FirstName] [nvarchar](max) NOT NULL,
>	[LastName] [nvarchar](max) NULL,
>	[JerseyNum] [int] NULL,
>	[Height] [nvarchar](max) NOT NULL,
>	[Weight] [int] NOT NULL,
>	[College] [nvarchar](max) NULL,
> CONSTRAINT [PK_Player] PRIMARY KEY CLUSTERED 
>(
>	[PlayerID] ASC
>)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
>) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
>GO
>
>ALTER TABLE [dbo].[Player]  WITH CHECK ADD  CONSTRAINT [FK_Player_Team] FOREIGN KEY([TeamID])
>REFERENCES [dbo].[Team] ([TeamID])
>GO
>
>ALTER TABLE [dbo].[Player] CHECK CONSTRAINT [FK_Player_Team]
>GO
>```

> In SQL server, I'm having trouble coming up with some possible stored procedures for my web app that will allow users to search for an NFL player or team, and a weather condition and see their stats / how they performed, what are some example stored procedures?

>SQL server Code: (sum(G.HomeYards + G.AwayYards)/SUM(G.HomeAttempts + G.AwayAttempts)) as 'Yards Per Attempt', (sum(G.HomeCompletions + G.AwayCompletions)/SUM(G.HomeAttempts + G.AwayAttempts)) as 'Completion Percentage', (sum(G.HomeTD + G.AwayTD)/sum(G.HomeINT + G.AwayINT)) as 'TD/INT Ratio'
all of these values are int how can I show these results with 2 decimals and percent
Gave me:

>Prompt: With the current database layout and data, how would I make a standard procedure to calculate the average points by a team per game?
>Output (with an adjustment to the original prompt to add a count and sum function):    SELECT 
        CAST(SUM(CASE WHEN gt.HoA = 'H' THEN g.HomePoints ELSE g.AwayPoints END) AS DECIMAL) 
        / 
        COUNT(gt.GameID) AS AveragePointsPerGame
    FROM 
        GameTeam gt
    INNER JOIN 
        Game g ON gt.GameID = g.GameID
    WHERE 
        gt.TeamID = @TeamID;
END
 
