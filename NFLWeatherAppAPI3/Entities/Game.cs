using System.ComponentModel.DataAnnotations;

namespace NFLWeatherAppAPI3.Entities
{
    public class Game
    {
        public int GameID { get; set; }
        public int? HomePoints { get; set; }
        public int? AwayPoints { get; set; }
        public int? HomeCompletions { get; set; }
        public int? AwayCompletions { get; set; }
        public int? HomeAttempts { get; set; }
        public int? AwayAttempts { get; set; }
        public int? HomeYards { get; set; }
        public int? AwayYards { get; set; }
        public int? HomeTD { get; set; }
        public int? AwayTD { get; set; }
        public int? HomeINT { get; set; }
        public int? AwayINT { get; set; }
    }
}
