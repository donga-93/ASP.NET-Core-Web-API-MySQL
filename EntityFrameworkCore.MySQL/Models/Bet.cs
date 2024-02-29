using System.ComponentModel.DataAnnotations;

namespace EntityFrameworkCore.MySQL.Models
{
    public class Bet
    {
        public int Id { get; set; }
        [Required]
        public decimal Amount { get; set; }
        [Required]
        public string Details { get; set; } = string.Empty;
    }
}
