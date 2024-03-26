using Microsoft.EntityFrameworkCore;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace NFLWeatherAppAPI.Entities
{
    public class TeamFav
    {
        
        public int TeamID { get; set; }
        [Key]
        public int UserID { get; set; }
    }
}
