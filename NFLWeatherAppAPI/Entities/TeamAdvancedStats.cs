using Microsoft.EntityFrameworkCore;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace NFLWeatherAppAPI.Entities
{
    public class TeamAdvancedStats
    {
        [Key]
        public int TeamID { get; set; }
        [Required]
        public string TeamName { get; set; }

        public string City { get; set; }

        public string Location { get; set; }

        public string Division { get; set; }

        public double PointsPerGame { get; set; }

        public double YardsPerGame { get; set; }
        
    }
}

