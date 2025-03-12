using System;
using System.Collections.Generic;
using System.Text;
using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;
using WebApplication.Data.Entities;
using WebApplication.Models;

namespace WebApplication.Data
{
    public class ApplicationDbContext : IdentityDbContext
    {
        public DbSet<Account> Accounts;
        public DbSet<Comment> Comments;

        public ApplicationDbContext(DbContextOptions<ApplicationDbContext> options)
            : base(options)
        {
        }

        protected override void OnModelCreating(ModelBuilder builder)
        {
            builder.Entity<Account>().HasData(
                new Account() { Id = 1, Balance = 2489.50m, Number = "123456789" },
                new Account() { Id = 2, Balance = 65978.20m, Number = "987654321" },
                new Account() { Id = 3, Balance = 123256.10m, Number = "01020304" }
            );
            
            // Données initiales pour la démonstration
            builder.Entity<Comment>().HasData(
                new Comment 
                { 
                    Id = Guid.Parse("11111111-1111-1111-1111-111111111111"), 
                    Author = "John Doe", 
                    Content = "Ceci est un commentaire normal sans script.", 
                    CreatedAt = DateTime.Now.AddDays(-5) 
                },
                new Comment 
                { 
                    Id = Guid.Parse("22222222-2222-2222-2222-222222222222"), 
                    Author = "Alice", 
                    Content = "J'adore cette application! Très utile pour comprendre les failles XSS.", 
                    CreatedAt = DateTime.Now.AddDays(-3) 
                }
            );
            base.OnModelCreating(builder);
        }
    }
}