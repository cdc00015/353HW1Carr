using Microsoft.AspNetCore.Mvc;
using NFLWeatherAppAPI.Entities;
using NFLWeatherAppAPI.Repositories;

namespace NFLWeatherAppAPI.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class PlayersController : Controller
    {
        private readonly IPlayerService playerService;

        public PlayersController(IPlayerService playerService)
        {
            this.playerService = playerService;
        }
        [HttpGet("{playerid}")]
        public async Task<List<Player>> PlayerGetBasicStats(int playerid)
        {
            var playerDetails = await playerService.PlayerGetBasicStats(playerid);
            if (playerDetails == null)
            {
               // return NotFound();
            }
            return playerDetails;
        }

    }
}
