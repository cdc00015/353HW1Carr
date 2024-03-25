﻿using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using NFLWeatherAppAPI.Entities;
using NFLWeatherAppAPI.Repositories;

namespace NFLWeatherAppAPI.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class TeamsController : Controller
    {
        private readonly ITeamService TeamService;

        public TeamsController(ITeamService TeamService)
        {
            this.TeamService = TeamService;
        }
        [HttpGet("{teamid}")]
        public async Task<List<Team>> TeamGetBasicStats(int teamid)
        {
            var teamDetails = await TeamService.TeamGetBasicStats(teamid);
            if (teamDetails == null)
            {
                // return NotFound();
            }
            return teamDetails;
        }
    }
}
