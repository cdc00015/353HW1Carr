using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;


namespace NFLWeatherAppAPI.Entities
{
    public class Player
    {
        [Key]
        public int PlayerID { get; set; }
        [Required]
        public string FirstName { get; set; }
        [Required]
        public string LastName { get; set; }
        public int? JerseyNum { get; set; } // Nullable int
        [Required]
        public string Height { get; set; }
        [Required]
        public int Weight { get; set; }
        [Required]
        public int TeamID { get; set; }
        public string? College { get; set; } // nullable string
    }
}
