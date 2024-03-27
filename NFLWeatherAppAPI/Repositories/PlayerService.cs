using NFLWeatherAppAPI.Data;
using NFLWeatherAppAPI.Entities;
using Microsoft.Data.SqlClient;
using Microsoft.EntityFrameworkCore;
//Cris Carr
namespace NFLWeatherAppAPI.Repositories
{
    public class PlayerService : IPlayerService
    {
        // connecting to the database 
        private readonly DbContextClass _dbContextClass;

        //default constructor
        public PlayerService(DbContextClass dbContextClass)
        {
            //setting private equal to dbContextClass
            _dbContextClass = dbContextClass;
        }

        public async Task<List<Player>> PlayerGetBasicStats(int playerid)
        {
            var param = new SqlParameter("@PlayerID", playerid);
            //converts response from db into json, keeps us safe from crosssite scripting
            var playerDetails = await Task.Run(() => _dbContextClass.Player.FromSqlRaw("exec spPlayerGetBasicStats @playerid", param ).ToListAsync());
            return playerDetails;
        }
        public async Task<List<AdvanceStats>> PlayerGetAdvanceStats(int playerid)
        {
            var param = new SqlParameter("@PlayerID", playerid);
            //converts response from db into json, keeps us safe from crosssite scripting
            var playerAdvanceDetails = await Task.Run(() => _dbContextClass.AdvanceStats.FromSqlRaw("exec spPlayerGetAdvanceStats @playerid", param).ToListAsync());
            return playerAdvanceDetails;
        }

    }
}
