using Microsoft.EntityFrameworkCore;
using WebApplication.RazorPages.Persistence.Entities;

namespace WebApplication.RazorPages.Persistence;

public class ApplicationDbContext : DbContext
{
    public DbSet<Person> Persons { get; set; }
    
    public ApplicationDbContext(DbContextOptions<ApplicationDbContext> options) : base(options)
    {
        
    }

    protected override void OnModelCreating(ModelBuilder modelBuilder)
    {
        base.OnModelCreating(modelBuilder);
    }
}