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
        [HttpGet("Basic/{userid}")]
        public async Task<List<TeamFav>> ShowFavoriteTeam(int userid)
        {
            var favTeam = await favoriteService.ShowFavoriteTeam(userid);
            if (favTeam == null)
            {
                // return NotFound();
            }
            return favTeam;
        }

        [HttpGet("Advanced/{userid}")]
        public async Task<List<PlayerFav>> ShowFavoritePlayer(int userid)
        {
            var favPlayer = await favoriteService.ShowFavoritePlayer(userid);
            if (favPlayer == null)
            {
                // return NotFound();
            }
            return favPlayer;
        }
    }
}
