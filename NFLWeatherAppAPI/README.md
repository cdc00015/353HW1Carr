# Homework 4 – Due March 26

## Database Updates
- Altered spPlayerGetBasicStats
- Altered spPlayerGetAdvanceStats

## Page Information and Functionality

### 1. Main Page
Our first page is going to be our home page. This is currently our index.html page. The home page will have the most user interactions out of all of our pages. The home page is the page that is going to lead to all of our other pages. It will have a search bar where users can search for the player they are interested in learning more about. The user will also have the option to choose from different temperatures and decide if they want rain or not. This is where we are going to use the weather API. We will separate our stats using different temperatures and precipitation. We will also have a link to go to the page that shows a list of the user's favorite teams and players. We will have a link to a certain player or team such as player of the month. The last link we will have is a link to our terms and conditions.

### 2. Player Page
Our second page is going to be a player page. We will be building this off of the JL10.html. This page will allow the user to look at the stats of the player that they looked up. We will be using the PlayerGetBasicStats API to show the stats of a player in a chart. We will have a button to reveal the “Advance” stats. This will reveal a new chart that will display stats that need calculations. We will use the PlayerGetAdvanceStats API for this to work.

### 3. Team Page
Our third page is going to be the team page. This page will allow the user to look at the stats of the player that they looked up. We will be using the TeamGetBAsicStats API to show the stats of the team that the user looked up. We will have a button the user can click to reveal a new chart that was the advanced stats or stats that require calculations. We will be using the TeamGetAdvanceStats API to show the advanced stats for the team.

### 4. Favorite Page
The fourth page will be our user’s favorite page. This page will show the list of the user's favorite players and teams. We will use the ShowFavorite API to display the list of favorites for the user. The page will also allow the user to add players and teams to the list of their favorites. To accomplish this, we will use the AddFavorite API.

### 5. (Insert 5th Page)
The fifth page we plan on using is…

### 6. Terms and Conditions Page
Our final page will be the terms and conditions page. This will provide the user with the terms and conditions of our website. The page will have a link to go back to the main page.

## API Information

### 1. PlayerGetBasicStats
- **Purpose:** This API will retrieve the basic information of a certain player that the user wants to know about and put it in a table on our website.
- **Inputs:** The user will input a Player’s name which will provide the API a PlayerID to use as the input for the API.
- **Outputs:** The API will output the basic information of a player from the Player table and the stats for the player from the Game table

### 2. PlayerGetAdvanceStats
- **Purpose:** This API will retrieve the advanced stats for a player that involves calculations
- **Inputs:** The user will input a player’s name which will provide the API a PlayerID to use as the input for the API.
- **Outputs:** The API will output the advance stat calculations from the spPlayerGetAdvanceStats using the Game and Player table.

### 3. TeamGetBasicStats
- **Purpose:** 
- **Inputs:**
- **Outputs:**

### 4. TeamGetAdvanceStats
- **Purpose:** 
- **Inputs:**
- **Outputs:**

### 5. ShowFavoritePlayer
- **Purpose:** 
- **Inputs:**
- **Outputs:**

### 6. ShowFavoriteTeam
- **Purpose:** 
- **Inputs:**
- **Outputs:**

## ChatGPT Prompts
Gave ChatGPT my code in my AdvanceStats class and told it I had a CS1519 error and asked what was wrong. It told me I had an extra '[Required]' at the end of my code.

Gave ChatGPT my code for the PlayerService Repo and told it I had a CS0029 error and asked what was wrong. It told me I connected the Player class instead of AdvanceStats for my PlayerGetAdvanceStats API.

### Group Assignment
Design a web application with your group. Outline the user experience in words, detailing the features and functionality. Your application must include:

- **Six Pages**: 
  - At least three pages must be dynamic, integrating APIs you've created.
  - Provide a brief description of all six pages, explaining the user interactions available on each.
  - You may use images and diagrams for clarification.

- **APIs**:
  - Create at least six APIs based on stored procedures.
  - Incorporate an external API for climate or weather information.
  - Emphasize user-generated content to drive content creation and engagement.

- **ASP.NET Web APIs**: 
  - Develop classes for implementing the Stored Procedures from Homework 3 (or reasonable substitutes).

Submit your web application proposal/ design in a markdown document linked from the main README.

### Individual Assignment
- **API Development**:
  - Independently, each group member should create two APIs based on stored procedures, using those from Homework 3 or new ones.
  - These APIs will be part of the final web application.
  - Document your APIs in a README markdown file within your Web API solution folder, detailing purpose, inputs, and outputs.
