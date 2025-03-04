using Microsoft.EntityFrameworkCore.Migrations;
using MySql.EntityFrameworkCore.Metadata;

#nullable disable

namespace AuthApi.Migrations
{
    /// <inheritdoc />
    public partial class AddNewModellsű : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.CreateTable(
                name: "akciosHazaks",
                columns: table => new
                {
                    Id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("MySQL:ValueGenerationStrategy", MySQLValueGenerationStrategy.IdentityColumn),
                    Cim = table.Column<string>(type: "longtext", nullable: false),
                    Alapterulet = table.Column<int>(type: "int", nullable: false),
                    SzobakSzama = table.Column<int>(type: "int", nullable: false),
                    TelekMerete = table.Column<int>(type: "int", nullable: true),
                    EpitesVege = table.Column<int>(type: "int", nullable: true),
                    Allapot = table.Column<string>(type: "longtext", nullable: true),
                    KepUrl = table.Column<string>(type: "longtext", nullable: true),
                    Tipus = table.Column<string>(type: "longtext", nullable: true),
                    Varos = table.Column<string>(type: "longtext", nullable: true),
                    Megye = table.Column<string>(type: "longtext", nullable: true),
                    Ar = table.Column<long>(type: "bigint", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_akciosHazaks", x => x.Id);
                })
                .Annotation("MySQL:Charset", "utf8mb4");

            migrationBuilder.CreateTable(
                name: "eladoHazaks",
                columns: table => new
                {
                    Id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("MySQL:ValueGenerationStrategy", MySQLValueGenerationStrategy.IdentityColumn),
                    Cim = table.Column<string>(type: "longtext", nullable: false),
                    Alapterulet = table.Column<decimal>(type: "decimal(18,2)", nullable: false),
                    SzobakSzama = table.Column<int>(type: "int", nullable: false),
                    TelekMerete = table.Column<decimal>(type: "decimal(18,2)", nullable: true),
                    EpitesVege = table.Column<int>(type: "int", nullable: true),
                    Allapot = table.Column<string>(type: "longtext", nullable: true),
                    KepUrl = table.Column<string>(type: "longtext", nullable: true),
                    Varos = table.Column<string>(type: "longtext", nullable: false),
                    Megye = table.Column<string>(type: "longtext", nullable: false),
                    Ar = table.Column<int>(type: "int", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_eladoHazaks", x => x.Id);
                })
                .Annotation("MySQL:Charset", "utf8mb4");

            migrationBuilder.CreateTable(
                name: "ingatlanoks",
                columns: table => new
                {
                    Id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("MySQL:ValueGenerationStrategy", MySQLValueGenerationStrategy.IdentityColumn),
                    Cim = table.Column<string>(type: "longtext", nullable: false),
                    Alapterulet = table.Column<decimal>(type: "decimal(18,2)", nullable: false),
                    SzobakSzama = table.Column<int>(type: "int", nullable: false),
                    TelekMerete = table.Column<decimal>(type: "decimal(18,2)", nullable: true),
                    EpitesVege = table.Column<int>(type: "int", nullable: true),
                    Allapot = table.Column<string>(type: "longtext", nullable: true),
                    KepUrl = table.Column<string>(type: "longtext", nullable: true),
                    Tipus = table.Column<string>(type: "longtext", nullable: true),
                    Varos = table.Column<string>(type: "longtext", nullable: false),
                    Megye = table.Column<string>(type: "longtext", nullable: false),
                    Ar = table.Column<int>(type: "int", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_ingatlanoks", x => x.Id);
                })
                .Annotation("MySQL:Charset", "utf8mb4");

            migrationBuilder.CreateTable(
                name: "telepuleseks",
                columns: table => new
                {
                    Id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("MySQL:ValueGenerationStrategy", MySQLValueGenerationStrategy.IdentityColumn),
                    Varosok = table.Column<string>(type: "longtext", nullable: true),
                    Megye = table.Column<string>(type: "longtext", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_telepuleseks", x => x.Id);
                })
                .Annotation("MySQL:Charset", "utf8mb4");

            migrationBuilder.CreateTable(
                name: "tulajdonosoks",
                columns: table => new
                {
                    Id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("MySQL:ValueGenerationStrategy", MySQLValueGenerationStrategy.IdentityColumn),
                    IngatlanId = table.Column<int>(type: "int", nullable: true),
                    Nev = table.Column<string>(type: "longtext", nullable: false),
                    Email = table.Column<string>(type: "longtext", nullable: true),
                    Telefon = table.Column<string>(type: "longtext", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_tulajdonosoks", x => x.Id);
                })
                .Annotation("MySQL:Charset", "utf8mb4");
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "akciosHazaks");

            migrationBuilder.DropTable(
                name: "eladoHazaks");

            migrationBuilder.DropTable(
                name: "ingatlanoks");

            migrationBuilder.DropTable(
                name: "telepuleseks");

            migrationBuilder.DropTable(
                name: "tulajdonosoks");
        }
    }
}
