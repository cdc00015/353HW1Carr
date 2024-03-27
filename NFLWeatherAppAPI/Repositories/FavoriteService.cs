using NFLWeatherAppAPI.Data;
using NFLWeatherAppAPI.Entities;
using Microsoft.Data.SqlClient;
using Microsoft.EntityFrameworkCore;
//Jake Williamson
namespace NFLWeatherAppAPI.Repositories
{
    public class FavoriteService : IFavoriteService
    {
        // connecting to the database 
        private readonly DbContextClass _dbContextClass;

        //default constructor
        public FavoriteService(DbContextClass dbContextClass)
        {
            //setting private equal to dbContextClass
            _dbContextClass = dbContextClass;
        }
        
        public async Task<List<PlayerFav>> ShowFavoritePlayer(int userid)
        {
            var param = new SqlParameter("@UserID", userid);
            //converts response from db into json, keeps us safe from crosssite scripting
            var favoritePlayer = await Task.Run(() => _dbContextClass.PlayerFav.FromSqlRaw("exec spShowFavoritePlayer @userid", param).ToListAsync());
            return favoritePlayer;
        }
        public async Task<List<TeamFav>> ShowFavoriteTeam(int userid)
        {
            var param = new SqlParameter("@UserID", userid);
            //converts response from db into json, keeps us safe from crosssite scripting
            var favoriteTeam = await Task.Run(() => _dbContextClass.TeamFav.FromSqlRaw("exec spShowFavoriteTeam @userid", param).ToListAsync());
            return favoriteTeam;
        }
       
    }
}
