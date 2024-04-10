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

        public string TeamName { get; set; }
        public string City { get; set; }
        public string Location { get; set; }
        public string Division { get; set; }

        //maybe include 'DateTime' here to record when a player was added to favorites list 

    }
}
