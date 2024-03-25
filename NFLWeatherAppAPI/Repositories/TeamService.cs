using NFLWeatherAppAPI.Data;
using NFLWeatherAppAPI.Entities;
using Microsoft.Data.SqlClient;
using Microsoft.EntityFrameworkCore;

namespace NFLWeatherAppAPI.Repositories
{
    public class TeamService // : ITeamService
    {
        // connecting to the database 
        private readonly DbContextClass _dbContextClass;

        //default constructor
        public TeamService(DbContextClass dbContextClass)
        {
            //setting private equal to dbContextClass
            _dbContextClass = dbContextClass;
        }

        /*
        public Task<List<Player>> TeamGetBasicStats(int teamid)
        {

        }
       */
    }
}
