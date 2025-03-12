using Microsoft.EntityFrameworkCore.Migrations;

namespace WebApplication.Data.Migrations
{
    public partial class V1 : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.CreateTable(
                name: "Account",
                columns: table => new
                {
                    Id = table.Column<int>(type: "INTEGER", nullable: false)
                        .Annotation("Sqlite:Autoincrement", true),
                    Balance = table.Column<decimal>(type: "TEXT", nullable: false),
                    Number = table.Column<string>(type: "TEXT", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Account", x => x.Id);
                });

            migrationBuilder.InsertData(
                table: "Account",
                columns: new[] { "Id", "Balance", "Number" },
                values: new object[] { 1, 2489.50m, "123456789" });

            migrationBuilder.InsertData(
                table: "Account",
                columns: new[] { "Id", "Balance", "Number" },
                values: new object[] { 2, 65978.20m, "987654321" });

            migrationBuilder.InsertData(
                table: "Account",
                columns: new[] { "Id", "Balance", "Number" },
                values: new object[] { 3, 123256.10m, "01020304" });
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "Account");
        }
    }
}
