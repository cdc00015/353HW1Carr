using System.Threading.Tasks;
using NFLWeatherAppAPI.Entities;

namespace NFLWeatherAppAPI.Repositories
{
    public interface ITeamService
    {
        public Task<List<Team>> TeamGetBasicStats(int teamid);

    }
}
