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
        modelBuilder.Entity<Job>().HasData(new Job() { Id = 1, Name = "" });
        modelBuilder.Entity<Job>().HasData(new Job() { Id = 2, Name = "Employé" });
        modelBuilder.Entity<Job>().HasData(new Job() { Id = 3, Name = "Ouvrier" });
        modelBuilder.Entity<Job>().HasData(new Job() { Id = 4, Name = "Indépendant" });
        modelBuilder.Entity<Job>().HasData(new Job() { Id = 5, Name = "Chef d'entreprise" });
        modelBuilder.Entity<Job>().HasData(new Job() { Id = 6, Name = "Cadre" });
        modelBuilder.Entity<Job>().HasData(new Job() { Id = 7, Name = "Profession libérale" });
        modelBuilder.Entity<Job>().HasData(new Job() { Id = 8, Name = "Fonctionnaire" });
        modelBuilder.Entity<Job>().HasData(new Job() { Id = 9, Name = "Enseignant" });
        modelBuilder.Entity<Job>().HasData(new Job() { Id = 10, Name = "Politicien" });
        modelBuilder.Entity<Job>().HasData(new Job() { Id = 11, Name = "Journaliste" });
        modelBuilder.Entity<Job>().HasData(new Job() { Id = 12, Name = "Artiste" });
        modelBuilder.Entity<Job>().HasData(new Job() { Id = 13, Name = "Artisan" });
        modelBuilder.Entity<Job>().HasData(new Job() { Id = 14, Name = "Retraité" });
        modelBuilder.Entity<Job>().HasData(new Job() { Id = 15, Name = "Etudiant" });
        modelBuilder.Entity<Job>().HasData(new Job() { Id = 16, Name = "Demandeur d'emploi" });
        modelBuilder.Entity<Job>().HasData(new Job() { Id = 17, Name = "Sans" });
        modelBuilder.Entity<Job>().HasData(new Job() { Id = 18, Name = "Autre" });
    }
}