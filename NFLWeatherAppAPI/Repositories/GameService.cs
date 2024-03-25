using NFLWeatherAppAPI.Data;
using NFLWeatherAppAPI.Entities;
using Microsoft.Data.SqlClient;
using Microsoft.EntityFrameworkCore;

namespace NFLWeatherAppAPI.Repositories
{
    public class GameService : IGameService
    {
        // connecting to the database 
        private readonly DbContextClass _dbContextClass;

        //default constructor
        public GameService(DbContextClass dbContextClass)
        {
            //setting private equal to dbContextClass
            _dbContextClass = dbContextClass;
        }

       //add api parameterized constructor here 

    }
}
