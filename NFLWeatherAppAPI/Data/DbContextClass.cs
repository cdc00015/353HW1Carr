using NFLWeatherAppAPI.Entities;
using Microsoft.EntityFrameworkCore;

namespace NFLWeatherAppAPI.Data
{
    public class DbContextClass : DbContext
    {
        public DbContextClass(DbContextOptions<DbContextClass> options) : base(options)
        {}
        //Cris Carr
        public DbSet<Player> Player { get; set; }
        public DbSet<AdvanceStats> AdvanceStats { get; set; }
        //Carson Mealey 
        public DbSet<Team> Team { get; set; }
        public DbSet<TeamAdvancedStats> TeamAdvancedStats { get; set; }
        //Jake Williamson
        public DbSet<PlayerFav> PlayerFav { get; set; }
        public DbSet<TeamFav> TeamFav { get; set; }
       
        //public DbSet<Game> Game { get; set; }
    }
}
