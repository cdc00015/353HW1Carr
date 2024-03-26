using System.Threading.Tasks;
using NFLWeatherAppAPI.Entities;

namespace NFLWeatherAppAPI.Repositories
{
    public interface IFavoriteService
    {
        public Task<List<PlayerFav>> ShowFavoritePlayer(int userid);
        public Task<List<TeamFav>> ShowFavoriteTeam(int userid);
    }
}
