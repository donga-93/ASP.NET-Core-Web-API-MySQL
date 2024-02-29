using EntityFrameworkCore.MySQL.Models;
using Microsoft.EntityFrameworkCore;

namespace EntityFrameworkCore.MySQL.Data
{
    public class AppDbContext : DbContext
    {
        public AppDbContext(DbContextOptions options) : base(options) { }

        public DbSet<User> Users { get; set; }
        public DbSet<Bet> Bets { get; set; }
    }
}
