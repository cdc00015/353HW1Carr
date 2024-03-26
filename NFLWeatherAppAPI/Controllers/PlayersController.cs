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
        [HttpGet("Basic/{playerid}")]
        public async Task<List<Player>> PlayerGetBasicStats(int playerid)
        {
            var playerDetails = await playerService.PlayerGetBasicStats(playerid);
            if (playerDetails == null)
            {
               // return NotFound();
            }
            return playerDetails;
        }

        [HttpGet("Advanced/{playerid}")]
        public async Task<List<AdvanceStats>> PlayerGetAdvanceStats(int playerid)
        {
            var playerAdvanceDetails = await playerService.PlayerGetAdvanceStats(playerid);
            if (playerAdvanceDetails == null)
            {
                // return NotFound();
            }
            return playerAdvanceDetails;
        }

        /* This would allow users to add players but not sure if we want / need to do this
        [HttpPost]
        public async Task<ActionResult<int>> AddPlayer(Player player)
        {
            var playerDetails = await playerService.AddPlayer(player);
            return playerDetails;
        }
        */
    }
}
