using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;

namespace AuthApi.Models
{
    public class AppDbContext : IdentityDbContext<ApplicationUser>
    {
        public AppDbContext()
        {
        }

        public AppDbContext(DbContextOptions options) : base(options)
        {
        }

        public DbSet<ApplicationUser> applicationUsers { get; set; } = null!;
        public DbSet<AkciosHazak> akciosHazaks { get; set; } = null!;
        public DbSet<Ingatlanok> ingatlanoks { get; set; } = null!;
        public DbSet<Tulajdonosok> tulajdonosoks { get; set; } = null!;
        public DbSet<BerelhetoHazak> berelhetoHazaks { get; set; } = null!;

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            if (!optionsBuilder.IsConfigured)
            {
                string conn = "Server=localhost;Port=3306;Database=DlbLakasKulcs;user=root;password=";
                optionsBuilder.UseMySQL(conn);
            }
        }
        protected override void OnModelCreating(ModelBuilder builder)
        {
            base.OnModelCreating(builder);
        }
    }
}
