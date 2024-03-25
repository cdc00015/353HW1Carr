using System.Threading.Tasks;
using NFLWeatherAppAPI.Entities;

namespace NFLWeatherAppAPI.Repositories
{
    public interface ITeamService
    {
        public Task<List<Player>> TeamGetBasicStats(int teamid);

    }
}
