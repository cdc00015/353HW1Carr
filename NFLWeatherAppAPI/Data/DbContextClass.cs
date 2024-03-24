using NFLWeatherAppAPI.Entities;
using Microsoft.EntityFrameworkCore;

namespace NFLWeatherAppAPI.Data
{
    public class DbContextClass : DbContext
    {
        public DbContextClass(DbContextOptions<DbContextClass> options) : base(options)
        {}
        public DbSet<Player> Player { get; set; }
    }
}
