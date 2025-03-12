using Microsoft.Data.SqlClient;
using Microsoft.EntityFrameworkCore;

namespace SqlInjection
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("=== DÉMONSTRATION D'INJECTION SQL AVEC ENTITY FRAMEWORK (CODE FIRST) ===\n");

            // CVE et références
            // CVE-2021-21311 - Vulnérabilité d'injection SQL dans certaines applications .NET
            // CWE-89 - La référence générale pour les injections SQL

            // Créer et initialiser la base de données
            using (var context = new SecuriteDbContext())
            {
                SetupDatabase(context);
            }
            
            // Exemple de saisie sécurisée: "1"
            // Exemple d'injection SQL: "1 OR 1=1"
            // 1 OR 1=1 - Affiche tous les utilisateurs
            // SQL injection : SELECT Id, Nom, Email, MotDePasse FROM Utilisateurs WHERE Id = 1; DELETE FROM Utilisateurs 
            // 1; SELECT * FROM INFORMATION_SCHEMA.TABLES; -- - Découvre la structure de la base
            // 0 UNION SELECT 1,2,3,4 - Permet de tester la structure et le nombre de colonnes
            // 1 UNION SELECT NULL, TABLE_NAME, NULL, NULL FROM INFORMATION_SCHEMA.TABLES; -- - Liste les tables
            // 1; DELETE FROM Utilisateurs; COMMIT; - Supprime toutes les données de la table 'Utilisateurs'

            // *** DÉMONSTRATION VULNÉRABLE (SANS EF - ADO.NET) ***
            Console.WriteLine("\n=== CODE VULNÉRABLE À L'INJECTION SQL (ADO.NET DIRECT) ===");
            Console.WriteLine("Entrez un ID d'utilisateur pour voir ses informations:");
            string userInput = Console.ReadLine();
            VulnerableQuery(userInput);

            // *** DÉMONSTRATION SÉCURISÉE AVEC ENTITY FRAMEWORK ***
            Console.WriteLine("\n=== CODE SÉCURISÉ AVEC ENTITY FRAMEWORK ===");
            Console.WriteLine("Entrez un ID d'utilisateur pour voir ses informations:");
            userInput = Console.ReadLine();
            EFSecureQuery(userInput);

            // *** DÉMONSTRATION DE QUERY INTERPOLATION (POTENTIELLEMENT VULNÉRABLE) ***
            Console.WriteLine("\n=== CODE AVEC EF CORE MAIS UTILISATION INCORRECTE (INTERPOLATION) ===");
            Console.WriteLine("Entrez un ID d'utilisateur pour voir ses informations:");
            userInput = Console.ReadLine();
            EFVulnerableQuery(userInput);

            Console.WriteLine("\nDémonstration terminée. Appuyez sur une touche pour quitter.");
            Console.ReadKey();
        }

        // Méthode vulnérable à l'injection SQL avec ADO.NET direct - CVE-2015-0889 (exemple de CVE)
        static void VulnerableQuery(string userId)
        {
            try
            {
                string connectionString =
                    "Server=localhost;Database=DemoSecuriteEF;Trusted_Connection=True;TrustServerCertificate=True;";

                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    connection.Open();

                    // VULNÉRABLE: Concaténation directe de l'entrée utilisateur
                    string sql = "SELECT Id, Nom, Email, MotDePasse FROM Utilisateurs WHERE Id = " + userId;

                    // var lastName = "Lebrun";
                    // var lastName = "Lebrun or 1=1";
                    // string sql2 = "SELECT Id, Nom, Email, MotDePasse FROM Utilisateurs WHERE Nom = '" + lastName + "'";
                    // string sql2 = "SELECT Id, Nom, Email, MotDePasse FROM Utilisateurs WHERE Nom = '" + "Lebrun' or '1'='1" + "'";
                    // string sql2 = "SELECT Id, Nom, Email, MotDePasse FROM Utilisateurs WHERE Nom = 'Lebrun' or '1'='1'          ";

                    Console.WriteLine($"Exécution de la requête: {sql}");

                    using (SqlCommand command = new SqlCommand(sql, connection))
                    {
                        using (SqlDataReader reader = command.ExecuteReader())
                        {
                            Console.WriteLine("\nRésultats:");

                            int recordCount = 0;
                            while (reader.Read())
                            {
                                recordCount++;
                                Console.WriteLine(
                                    $"ID: {reader["Id"]}, Nom: {reader["Nom"]}, Email: {reader["Email"]}, MotDePasse: {reader["MotDePasse"]}");
                                // var user = new Utilisateur()
                                // {
                                //     Id = int.Parse(reader["Id"].ToString()),
                                //     Nom = reader["Nom"].ToString(),
                                //     Email = reader["Email"].ToString(),
                                //     MotDePasse = reader["MotDePasse"].ToString()
                                // };
                            }

                            if (recordCount == 0)
                            {
                                Console.WriteLine("Aucun résultat trouvé.");
                            }
                            else
                            {
                                Console.WriteLine(
                                    $"\n{recordCount} enregistrement(s) trouvé(s). Une injection SQL a probablement réussi si plus d'un enregistrement est retourné.");
                            }
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine($"Erreur: {ex.Message}");
            }
        }

        // Méthode sécurisée avec Entity Framework
        static void EFSecureQuery(string userIdInput)
        {
            try
            {
                // Tenter de convertir l'entrée en int (ce qui est sécuritaire)
                if (!int.TryParse(userIdInput, out int userId))
                {
                    Console.WriteLine("L'ID doit être un nombre entier.");
                    return;
                }
                
                // SELECT Id from UTILISATEURS
                // vérifier que 'userId'

                using var context = new SecuriteDbContext();
                Console.WriteLine($"Exécution de la requête EF: context.Utilisateurs.Where(u => u.Id == {userId})");

                // SÉCURISÉ: EF génère automatiquement une requête paramétrée
                var users = context.Set<Utilisateur>()
                    .Where(u => u.Id == userId)
                    .ToList();

                Console.WriteLine("\nRésultats:");

                if (!users.Any())
                {
                    Console.WriteLine("Aucun résultat trouvé.");
                }
                else
                {
                    foreach (var user in users)
                    {
                        Console.WriteLine(
                            $"ID: {user.Id}, Nom: {user.Nom}, Email: {user.Email}, MotDePasse: {user.MotDePasse}");
                    }

                    Console.WriteLine($"\n{users.Count} enregistrement(s) trouvé(s).");
                }

                // Afficher la requête SQL générée par EF
                Console.WriteLine("\nRequête SQL générée par Entity Framework:");
                Console.WriteLine("SELECT [u].[Id], [u].[Email], [u].[MotDePasse], [u].[Nom] FROM [Utilisateurs] AS [u] WHERE [u].[Id] = @__userId_0");
                Console.WriteLine("// @__userId_0='1' (Type = Int32)");
            }
            catch (Exception ex)
            {
                Console.WriteLine($"Erreur: {ex.Message}");
            }
        }

        // Méthode potentiellement vulnérable avec Entity Framework (utilisation incorrecte - interpolation de chaîne)
        static void EFVulnerableQuery(string userIdInput)
        {
            try
            {
                using var context = new SecuriteDbContext();
                // VULNÉRABLE: Utilisation incorrecte d'EF avec FromSqlRaw et interpolation de chaîne
                // Note: La vraie sécurité dépend de comment EF traite cette requête en interne
                string sqlQuery = $"SELECT * FROM Utilisateurs WHERE Id = {userIdInput}";

                Console.WriteLine(
                    $"Exécution de la requête EF avec interpolation: context.Utilisateurs.FromSqlRaw(\"{sqlQuery}\")");

                // Cette approche peut être vulnérable si utilisée incorrectement
                var users = context.Set<Utilisateur>()
                    .FromSqlRaw(sqlQuery)
                    .ToList();

                Console.WriteLine("\nRésultats:");

                if (!users.Any())
                {
                    Console.WriteLine("Aucun résultat trouvé.");
                }
                else
                {
                    foreach (var user in users)
                    {
                        Console.WriteLine(
                            $"ID: {user.Id}, Nom: {user.Nom}, Email: {user.Email}, MotDePasse: {user.MotDePasse}");
                    }

                    Console.WriteLine(
                        $"\n{users.Count} enregistrement(s) trouvé(s). Si plus d'un enregistrement est retourné, cela pourrait indiquer une injection SQL réussie.");
                }

                // Afficher ce qu'aurait dû être la bonne façon
                Console.WriteLine("\nLa manière correcte d'utiliser FromSqlRaw serait:");
                Console.WriteLine(
                    "context.Utilisateurs.FromSqlRaw(\"SELECT * FROM Utilisateurs WHERE Id = {0}\", userIdInput)");
            }
            catch (Exception ex)
            {
                Console.WriteLine($"Erreur: {ex.Message}");
            }
        }

        // Configuration de la base de données pour la démonstration
        static void SetupDatabase(SecuriteDbContext context)
        {
            try
            {
                // S'assurer que la base de données est créée
                context.Database.EnsureCreated();

                if (!context.Utilisateurs.Any())
                {
                    var users = new List<Utilisateur>
                    {
                        new() { Nom = "Admin", Email = "admin@example.com", MotDePasse = "admin123" },
                        new() { Nom = "Jean Dupont", Email = "jean@example.com", MotDePasse = "motdepasse123" },
                        new() { Nom = "Marie Martin", Email = "marie@example.com", MotDePasse = "motdepasse456" },
                        new()
                        {
                            Nom = "Pierre Durand", Email = "pierre@example.com", MotDePasse = "motdepasse789"
                        },
                        new()
                        {
                            Nom = "Sophie Lefebvre", Email = "sophie@example.com",
                            MotDePasse = "motdepasse101112"
                        }
                    };
                    context.Utilisateurs.AddRange(users);
                }

                if (!context.CompteBancaires.Any())
                {
                    var bankAccounts = new List<CompteBancaire>
                    {
                        new() { Iban = "BE72333311112222", Solde = 124.9m },
                        new() { Iban = "BE44111122223333", Solde = 999465.9m },
                        new() { Iban = "BE99888844446666", Solde = 422447.9m },
                      
                    };
                    context.CompteBancaires.AddRange(bankAccounts);
                }
                context.SaveChanges();

                Console.WriteLine("Base de données de démonstration créée avec succès !");
            }
            catch (Exception ex)
            {
                Console.WriteLine($"Erreur lors de la configuration de la base de données: {ex.Message}");
            }
        }
    }

    public class Utilisateur
    {
        public int Id { get; set; }
        public string Nom { get; set; }
        public string Email { get; set; }
        public string MotDePasse { get; set; }
    }
    
    public class CompteBancaire
    {
        public int Id { get; set; }
        public string Iban { get; set; }
        public decimal Solde { get; set; }
    }

    // DbContext Entity Framework
    public class SecuriteDbContext : DbContext
    {
        public DbSet<Utilisateur> Utilisateurs { get; set; }
        public DbSet<CompteBancaire> CompteBancaires { get; set; }

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            optionsBuilder.UseSqlServer("Server=localhost;Database=DemoSecuriteEF;Trusted_Connection=True;TrustServerCertificate=True;");
        }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Utilisateur>()
                .HasKey(u => u.Id);

            modelBuilder.Entity<Utilisateur>()
                .Property(u => u.Nom)
                .IsRequired()
                .HasMaxLength(100);

            modelBuilder.Entity<Utilisateur>()
                .Property(u => u.Email)
                .IsRequired()
                .HasMaxLength(100);

            modelBuilder.Entity<Utilisateur>()
                .Property(u => u.MotDePasse)
                .IsRequired()
                .HasMaxLength(100);
            
            modelBuilder.Entity<CompteBancaire>()
                .HasKey(u => u.Id);

            modelBuilder.Entity<CompteBancaire>()
                .Property(u => u.Iban)
                .IsRequired()
                .HasMaxLength(100);

            modelBuilder.Entity<CompteBancaire>()
                .Property(u => u.Solde)
                .IsRequired();
        }
    }
}