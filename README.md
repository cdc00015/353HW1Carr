# 353 HW#1
## Project Overview
My goal for my project is to have a website where people can enter a player and the climate they wants the stats for that player and my website be able to give it to them. Right now my project is very early one. It has a search bar and drop down menu but they are not currently working.
## Page Descriptions
| Page | Description |
|-----:|-----------|
|     Index| My first page is the main page. It has a search bar where the user is supposed to enter the player or team they are looking for. The drop down menus are for the climate they want to use. My search button currently changes the url for the climate, but not player. I also have a link leading to my second page which is early mock up of a player page.|
|     JL10| The player’s page has two tables on. One is being hidden by a button that appears whenever the user clicks it. I would like to add more stats and data into my player profiles later.  |

## Onlines Research
### Websites
#### [The Football Database](https://www.footballdb.com/stats/index.html)
The website has 6 drop down selections to pick from different stats such as year, statistic, and league. The website also has a submit button. Once the user clicks submit it takes the user to a new page that has those statistics. The website then goes to a new page. For each drop down they have a “/” and then the stat that is chosen. For this submit press, the user choose NFL as the league, passing stats, 2023 season, and the regular season. This would be a good way to change to different screens using the slashes
#### [Pro Football Reference](https://www.pro-football-reference.com/)
This website shows all stats for a player instead of stat leaders for specific leaders for different stats and bacsue of this the website uses more simplier url. They pro-football-reference.com/”player, team, awards etc”/”1-3 letter code”/”optional more specific combitnation”. For exmaple Jordan Love for be pro-football-reference.com/player/L/LoveJo03.html. For the tables that the website uses to show the information for the player, they grab information for a dataset that has all the players information and statistics. They also set up a formula for the information in order to get the right numbers. For example, ccompletion percentage it set it equal to completed passes/pass attempts. It has a minimum value that the player must reach in order for the website to use it.
#### [Statmuse](https://www.statmuse.com/nfl)
The search bar is made using different styles. The search bar starts with the style of the search bar area. It takes out the default format and adds some such as transparency and the size of the border. The website uses “aria-autocomplete=”list”. This uses technology that looks at psat people’s requests and gives suggestions based on what is most likely. The website uses enterkeyhint=”search” in order to allow to user to search by clicking enter on the keyboard. The text area of the search bar has required=”” that does not allow the user to hit enter or search unless something is in the search bar.
### Repositories
#### [sports.db](https://github.com/devdr3/sport.db/blob/master/README.md)
For the github repositories I looked at their READMEs to see how to write mine and some ideas to put inside of mine. They explained in their README how to use their product and what their website can do. They list all the stats that you can find using their website. I plan to do the same thing later once I get more along in my project. For now I will just be doing what is required by the assignment. It also shows what the querries that were used for the project. While I am not looking to add sql to my project yet, it could be useful later one.
#### [Sports Dataverse](https://github.com/sportsdataverse/)
For this I didn’t really use much of the code but some ideas they had to show their information and stats. They used a lot of graphs to show stats and relationships. I may want to use graphs for my website later once I get further along. It would cool to create a way to automatically make graphs of the stats that the user would want.
## Future Enhancements
There are so many things my website needs because of how early I am in the process. Here is a list of my main goals for the website:
* Create working search bar
* Add more data for each player
* Make more pages for players and/or teams
* Make the website prettier
## Citations
### W3 Resources
[Bootstrap Image](https://www.w3schools.com/bootstrap5/bootstrap_images.php)
[Java Script Button](https://www.w3schools.com/js/js_intro.asp)
### ChatGPT Prompts
Asked how I can put an image and text into one line and it introduced me to the display: flex; feature.

I gave ChatGPT my html code for my search bar and my dropdown and asked it to center it and put my search bar above the dropdowns. I used the code it gave me to change the location of my search bar and drop down.

I gave ChatGPT my table data and asked for the table to become wider, black border, bold first row, and make every other row light grey. I used the csss that it gave me.

I asked ChatGPT to break down a bit of code for Statmuse. This helped me understand what the code was a little better.
## Reflections of Resources
The research that I did was less important that I thought for the technical side. I ultimately used our class notes and w3 for all of code. I want to make the website prettier. I need it so my search button actual works and sends the user to the place they looking to. I also need to find a way to get the data and put it on my website. My greatest resource was ChatGPT. The other websites that I researched did not really help me bacause looking at their code just made me more confused. ChatGPT helped my most with my css and formating. I also used the code we used from class because I have it in front of me and it was the most convenient to learn from.
