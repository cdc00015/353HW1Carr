using Microsoft.EntityFrameworkCore;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace NFLWeatherAppAPI.Entities
{
    public class PlayerFav
    {
        
        public int PlayerID { get; set; }
        [Key]
        public int UserID { get; set; }

        //maybe include 'DateTime' here to record when a player was added to favorites list 
    }
}
