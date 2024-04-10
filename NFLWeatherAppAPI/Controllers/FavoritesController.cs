using Microsoft.AspNetCore.Mvc;
using NFLWeatherAppAPI.Entities;
using NFLWeatherAppAPI.Repositories;
using Microsoft.AspNetCore.Http;

namespace NFLWeatherAppAPI.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class FavoritesController : ControllerBase
    {
        private readonly IFavoriteService favoriteService;

        public FavoritesController(IFavoriteService FavoriteService)
        {
            this.favoriteService = FavoriteService;
        }
        [HttpGet("team/{userid}")]
        public async Task<List<TeamFav>> ShowFavoriteTeam(int userid)
        {
            var favTeamDetails = await favoriteService.ShowFavoriteTeam(userid);
            if (favTeamDetails == null)
            {
                // return NotFound();
            }
            return favTeamDetails;
        }

        [HttpGet("player/{userid}")]
        public async Task<List<PlayerFav>> ShowFavoritePlayer(int userid)
        {
            var favPlayerDetails = await favoriteService.ShowFavoritePlayer(userid);
            if (favPlayerDetails == null)
            {
                // return NotFound();
            }
            return favPlayerDetails;
        }
    }
}
