using System.Threading.Tasks;
using NFLWeatherAppAPI.Entities;

namespace NFLWeatherAppAPI.Repositories
{
    public interface IPlayerService
    {
        public Task<List<Player>> PlayerGetBasicStats(int playerid);
        public Task<List<AdvanceStats>> PlayerGetAdvanceStats(int playerid);
    }
}
