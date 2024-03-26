using NFLWeatherAppAPI.Entities;
using Microsoft.EntityFrameworkCore;

namespace NFLWeatherAppAPI.Data
{
    public class DbContextClass : DbContext
    {
        public DbContextClass(DbContextOptions<DbContextClass> options) : base(options)
        {}
        public DbSet<Player> Player { get; set; }
        public DbSet<Team> Team { get; set; }
        public DbSet<Game> Game { get; set; } 
        public DbSet<AdvanceStats> AdvanceStats { get; set; }
        public DbSet<PlayerFav> PlayerFav { get; set; }
        public DbSet<TeamFav> TeamFav { get; set; }

    }
}
