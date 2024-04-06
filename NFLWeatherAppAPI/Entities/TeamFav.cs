using System.ComponentModel.DataAnnotations;

namespace NFLWeatherAppAPI.Entities
{
    public class TeamFav
    {
        public int TeamID { get; set; }
        [Key]
        public int UserID { get; set; }
    }
}
