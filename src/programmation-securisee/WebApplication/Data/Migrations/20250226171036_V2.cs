using System;
using Microsoft.EntityFrameworkCore.Migrations;

namespace WebApplication.Data.Migrations
{
    public partial class V2 : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.CreateTable(
                name: "Comment",
                columns: table => new
                {
                    Id = table.Column<Guid>(type: "TEXT", nullable: false),
                    Author = table.Column<string>(type: "TEXT", maxLength: 100, nullable: false),
                    Content = table.Column<string>(type: "TEXT", nullable: false),
                    CreatedAt = table.Column<DateTime>(type: "TEXT", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Comment", x => x.Id);
                });

            migrationBuilder.InsertData(
                table: "Comment",
                columns: new[] { "Id", "Author", "Content", "CreatedAt" },
                values: new object[] { new Guid("11111111-1111-1111-1111-111111111111"), "John Doe", "Ceci est un commentaire normal sans script.", new DateTime(2025, 2, 21, 18, 10, 36, 79, DateTimeKind.Local).AddTicks(2865) });

            migrationBuilder.InsertData(
                table: "Comment",
                columns: new[] { "Id", "Author", "Content", "CreatedAt" },
                values: new object[] { new Guid("22222222-2222-2222-2222-222222222222"), "Alice", "J'adore cette application! Très utile pour comprendre les failles XSS.", new DateTime(2025, 2, 23, 18, 10, 36, 87, DateTimeKind.Local).AddTicks(6353) });
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "Comment");
        }
    }
}
