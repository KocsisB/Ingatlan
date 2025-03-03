using DLB_backend.Models;
using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;

namespace AuthApi.Datas
{
    public class AppDbContext : IdentityDbContext<Felhasznalok>
    {
        public AppDbContext(DbContextOptions options) : base(options)
        {
        }

        public DbSet<Felhasznalok> applicationUsers { get; set; } = null!;

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            if (!optionsBuilder.IsConfigured)
            {
                string conn = "Server=localhost;Port=5149;Database=Auth;user=root;password=";
                optionsBuilder.UseMySQL(conn);
            }
        }
        protected override void OnModelCreating(ModelBuilder builder)
        {
            base.OnModelCreating(builder);
        }
    }
}