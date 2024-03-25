using Microsoft.EntityFrameworkCore;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace NFLWeatherAppAPI.Entities
{
    public class GameTeam
    {
        [Key]
        public int GameID { get; set; }
        public int TeamID { get; set; }
        public string HoA { get; set; } // Assuming "HoA" stands for "Home or Away"

        public Game Game { get; set; }
        public Team Team { get; set; }
    }
}
