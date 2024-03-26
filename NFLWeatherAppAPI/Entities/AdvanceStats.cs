using Microsoft.EntityFrameworkCore;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace NFLWeatherAppAPI.Entities
{
    public class AdvanceStats
    {
        [Key]
        public int PlayerID { get; set; }
        [Required]
        public string? FirstName { get; set; }
        public string? LastName { get; set; }
        public int? JerseyNum { get; set; } // Nullable int
        [Required]
        public double YardsPerAttempt { get; set; }
        [Required]
        public double CompletionPercentage { get; set; }
        [Required]
        public double TDINTRatio { get; set; }

     }
}
