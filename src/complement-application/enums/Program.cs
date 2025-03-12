// See https://aka.ms/new-console-template for more information

using enums;
using enums.Mollie;
using enums.MyMinfin.Enums;

Console.WriteLine("Hello, World!");

var availableStatuses = new List<string>()
{
    // cycle de vie, lifecycle
    "Créée à blanc",
    "Prête à être complétée",
    "Sauvegardée en brouillon",
    "Soumise pour vérification",
    "AER envoyé",
    "Clôturée"
};

const string CST_CREEE_A_BLANC = "Créée à blanc";
const string CST_SAUVEGARDEE_EN_BROUILLON = "Sauvegardée en brouillon";
const string CST_SUPPRIMEE = "Supprimée";

Console.WriteLine($"{availableStatuses[2]}"); // 3ème élément : Sauvegardée en brouillon

availableStatuses = new List<string>()
{
    // cycle de vie, lifecycle
    "Créée à blanc",
    "Proposition simplifiée disponible",
    "Prête à être complétée",
    "Sauvegardée en brouillon",
    "Soumise pour vérification",
    "AER envoyé",
    "Clôturée",
    // "Proposition simplifiée disponible",
};

Console.WriteLine($"{availableStatuses[2]}"); // 3ème élément : Prête à être complétée

Console.WriteLine(DeclarationFiscaleStatus.SauvegardéeEnBrouillon); // output: SauvegardéeEnBrouillon
Console.WriteLine(CST_SAUVEGARDEE_EN_BROUILLON); // output: Sauvegardée en brouillon

// const string CST_SAUVEGARDEE_EN_BROUILLON = "Sauvegardé en brouillon";
// Console.WriteLine(CST_SAUVEGARDEE_EN_BROUILLON); // output: Sauvegardé en brouillon

Console.WriteLine(MandateStatus.VALID); // output: VALID

for (int i = 0; i < 16; i++)
{
    Console.WriteLine($"[{i}] {(ColorEnum)i:G}");
}

var red = ColorEnum.Red;

var greenYellowBlack = ColorEnum.Green | ColorEnum.Yellow | ColorEnum.Black;

if(greenYellowBlack.HasFlag(ColorEnum.Green))
    Console.WriteLine($"Ma couleur contient du vert");