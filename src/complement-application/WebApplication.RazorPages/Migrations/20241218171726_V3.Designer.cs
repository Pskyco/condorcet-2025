﻿// <auto-generated />
using System;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Infrastructure;
using Microsoft.EntityFrameworkCore.Migrations;
using Microsoft.EntityFrameworkCore.Storage.ValueConversion;
using WebApplication.RazorPages.Persistence;

#nullable disable

namespace WebApplication.RazorPages.Migrations
{
    [DbContext(typeof(ApplicationDbContext))]
    [Migration("20241218171726_V3")]
    partial class V3
    {
        /// <inheritdoc />
        protected override void BuildTargetModel(ModelBuilder modelBuilder)
        {
#pragma warning disable 612, 618
            modelBuilder.HasAnnotation("ProductVersion", "9.0.0");

            modelBuilder.Entity("WebApplication.RazorPages.Persistence.Entities.Job", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("INTEGER");

                    b.Property<string>("Name")
                        .IsRequired()
                        .HasColumnType("TEXT");

                    b.HasKey("Id");

                    b.ToTable("Job");

                    b.HasData(
                        new
                        {
                            Id = 1,
                            Name = ""
                        },
                        new
                        {
                            Id = 2,
                            Name = "Employé"
                        },
                        new
                        {
                            Id = 3,
                            Name = "Ouvrier"
                        },
                        new
                        {
                            Id = 4,
                            Name = "Indépendant"
                        },
                        new
                        {
                            Id = 5,
                            Name = "Chef d'entreprise"
                        },
                        new
                        {
                            Id = 6,
                            Name = "Cadre"
                        },
                        new
                        {
                            Id = 7,
                            Name = "Profession libérale"
                        },
                        new
                        {
                            Id = 8,
                            Name = "Fonctionnaire"
                        },
                        new
                        {
                            Id = 9,
                            Name = "Enseignant"
                        },
                        new
                        {
                            Id = 10,
                            Name = "Politicien"
                        },
                        new
                        {
                            Id = 11,
                            Name = "Journaliste"
                        },
                        new
                        {
                            Id = 12,
                            Name = "Artiste"
                        },
                        new
                        {
                            Id = 13,
                            Name = "Artisan"
                        },
                        new
                        {
                            Id = 14,
                            Name = "Retraité"
                        },
                        new
                        {
                            Id = 15,
                            Name = "Etudiant"
                        },
                        new
                        {
                            Id = 16,
                            Name = "Demandeur d'emploi"
                        },
                        new
                        {
                            Id = 17,
                            Name = "Sans"
                        },
                        new
                        {
                            Id = 18,
                            Name = "Autre"
                        });
                });

            modelBuilder.Entity("WebApplication.RazorPages.Persistence.Entities.Person", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("INTEGER");

                    b.Property<DateTime>("BirthDate")
                        .HasColumnType("TEXT");

                    b.Property<string>("Email")
                        .IsRequired()
                        .HasColumnType("TEXT");

                    b.Property<string>("FullName")
                        .IsRequired()
                        .HasColumnType("TEXT");

                    b.Property<bool>("IsAlive")
                        .HasColumnType("INTEGER");

                    b.Property<int>("JobId")
                        .HasColumnType("INTEGER");

                    b.HasKey("Id");

                    b.HasIndex("JobId");

                    b.ToTable("Persons");
                });

            modelBuilder.Entity("WebApplication.RazorPages.Persistence.Entities.Person", b =>
                {
                    b.HasOne("WebApplication.RazorPages.Persistence.Entities.Job", "Job")
                        .WithMany()
                        .HasForeignKey("JobId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.Navigation("Job");
                });
#pragma warning restore 612, 618
        }
    }
}
