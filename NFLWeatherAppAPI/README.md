# Homework 4 – Due March 26

## Database Updates
- Altered spPlayerGetBasicStats (updated version in CristoferCarrSps)
- Altered spPlayerGetAdvanceStats (updated version in CristoferCarrSps)
- Altered spTeamGetBasicStats (updated version in CarsonMealeySPs)
- Altered spTeamGetAdvanceStats (updated version in CarsonMealeySPs)
- Created spShowFavoritePlayer (updated version in JacobWilliamsonSPs)
- Created spShowFavoriteTeam (updated version in JacobWilliamsonSPs)
- Added data to PlayerFav and TeamFav tables

### Note
* In order to use these api's, you will first need to execute our [updated stored procedures](/SQL) and the two new mock data files for [TeamFav](/SQL/TeamFavData.sql) and [PlayerFav](/SQL/PlayerFavData.sql).

## Page Information and Functionality

### 1. Main Page
Our first page is going to be our home page. This is currently our index.html page. The home page will have the most user interactions out of all of our pages. The home page is the page that is going to lead to all of our other pages. It will have a search bar where users can search for the player they are interested in learning more about. The user will also have the option to choose from different temperatures and decide if they want rain or not. This is where we are going to use the weather API. We will separate our stats using different temperatures and precipitation. We will also have a link to go to the page that shows a list of the user's favorite teams and players. We will have a link to a certain player or team such as player of the month. The last link we will have is a link to our terms and conditions.

### 2. Player Page
Our second page is going to be a player page. We will be building this off of the JL10.html. This page will allow the user to look at the stats of the player that they looked up. We will be using the PlayerGetBasicStats API to show the stats of a player in a chart. We will have a button to reveal the “Advance” stats. This will reveal a new chart that will display stats that need calculations. We will use the PlayerGetAdvanceStats API for this to work.

### 3. Team Page
Our third page is going to be the team page. This page will allow the user to look at the stats of the player that they looked up. We will be using the TeamGetBAsicStats API to show the stats of the team that the user looked up. We will have a button the user can click to reveal a new chart that was the advanced stats or stats that require calculations. We will be using the TeamGetAdvanceStats API to show the advanced stats for the team.

### 4. Favorite Page
The fourth page will be our user’s favorite page. This page will show the list of the user's favorite players and teams. We will use the ShowPlayerFavorite and ShowTeamFavorite APIs to display the list of favorites for the user. We are also planning for this page to allow the user to add players and teams to their list favorites. To accomplish this, we will use the AddFavorite API which is not currently functioning.

### 5. Login Page
The fifth page we will make a login page. This will allow the user to sign in. This will allow the website to know the UserID of the user using our website. In the future this will also allow for users to view their list of favorite teams and players.

### 6. Terms and Conditions Page
Our final page will be the terms and conditions page. This will provide the user with the terms and conditions of our website. The page will have a link to go back to the main page.

## API Information

### 1. PlayerGetBasicStats (Cris Carr)
- **Purpose:** This API will retrieve the basic information of a certain player that the user wants to know about and put it in a table on our website.
- **Inputs:** The user will input a Player’s name which will provide the API a PlayerID to use as the input for the API.
- **Outputs:** The API will output the basic information of a player from the Player table and the stats for the player from the Game table

### 2. PlayerGetAdvanceStats (Cris Carr)
- **Purpose:** This API will retrieve the advanced stats for a player that involves calculations
- **Inputs:** The user will input a player’s name which will provide the API a PlayerID to use as the input for the API.
- **Outputs:** The API will output the advance stat calculations from the spPlayerGetAdvanceStats using the Game and Player table.

### 3. TeamGetBasicStats (Carson Mealey)
- **Purpose:** This API will retrieve the basic stats for a specific team that the user chooses.
- **Inputs:** The user will input a team's name which will provide the API a TeamID to use as the input.
- **Outputs:** The API will output basic information about the team the user chose.  Some of the information included is a team's location, division they play in, and the city where the team is located.

### 4. TeamGetAdvanceStats (Carson Mealey)
- **Purpose:** This API will retrieve the advanced stats of a team that requires calculations.
- **Inputs:** The user will input the name of a team which will provide the API with a TeamID to use for the input of the API
- **Outputs:** The API will output the advance stat calculations from the spTeamGetAdvanceStats using the Game and Team table.

### 5. ShowFavoritePlayer (Jacob Williamson)
- **Purpose:** This API will return to the user their list of favorite players in the favorites page
- **Inputs:** Since a certain user will be trying to access their favorites, the UserID will be the input into the API
- **Outputs:** The output will be from the PlayerFav tables. It will display to the user the teams stored as favorites.

### 6. ShowFavoriteTeam (Jacob Williamson)
- **Purpose:** This API will return to the user their list of favorite teams in the favorites page
- **Inputs:** Since a certain user will be trying to access their favorites, the UserID will be the input into the API
- **Outputs:** The output will be from the TeamFav tables. It will just display to the user the teams stored as favorites.

## ChatGPT Prompts
Gave ChatGPT my code in my AdvanceStats class and told it I had a CS1519 error and asked what was wrong. It told me I had an extra '[Required]' at the end of my code.

Gave ChatGPT my code for the PlayerService Repo and told it I had a CS0029 error and asked what was wrong. It told me I connected the Player class instead of AdvanceStats for my PlayerGetAdvanceStats API.

Gave ChatGPT my code for the TeamsController and told it I was getting a fetch error response 500 and it told me to alter my "HTTP Get" code and that helped fix the issue.

>Could you help me with making some mock data for the following sql server table? and I have users with userid's 1 through 10, and teams with teamid's 1 through 10...

This quickly returned a useful SQL insert query that saved us from having to create mock data manually. 
