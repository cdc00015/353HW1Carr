﻿using NFLWeatherAppAPI.Data;
using NFLWeatherAppAPI.Entities;
using Microsoft.Data.SqlClient;
using Microsoft.EntityFrameworkCore;
//Carson Mealey
namespace NFLWeatherAppAPI.Repositories
{
    public class TeamService : ITeamService
    {
        // connecting to the database 
        private readonly DbContextClass _dbContextClass;

        //default constructor
        public TeamService(DbContextClass dbContextClass)
        {
            //setting private equal to dbContextClass
            _dbContextClass = dbContextClass;
        }

        
        public async Task<List<Team>> TeamGetBasicStats(int teamid)
        {
            var param = new SqlParameter("@TeamID", teamid);
            //converts response from db into json, keeps us safe from crosssite scripting
            var teamDetails = await Task.Run(() => _dbContextClass.Team.FromSqlRaw("exec spTeamGetBasicStats @TeamID", param).ToListAsync());
            return teamDetails;
        }

        public async Task<List<TeamAdvancedStats>> TeamGetAdvancedStats(int teamid)
        {
            var param = new SqlParameter("@TeamID", teamid);
            //converts response from db into json, keeps us safe from crosssite scripting
            var teamAdvancedDetails = await Task.Run(() => _dbContextClass.TeamAdvancedStats.FromSqlRaw("exec spTeamGetAdvancedStats @TeamID", param).ToListAsync());
            return teamAdvancedDetails;
        }

    }
}
