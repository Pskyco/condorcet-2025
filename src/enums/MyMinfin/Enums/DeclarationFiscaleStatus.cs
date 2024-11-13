using System.ComponentModel.DataAnnotations;

namespace enums.MyMinfin.Enums;

public enum DeclarationFiscaleStatus
{
    [Display(Description = "Créée à blanc")]
    CrééeABlanc,
    // Créée_à_blanc,
    // CREEE_A_BLANC,
    PropositionSimplifiéeDisponible,
    PrêteAEtreComplétée,
    [Display(Description = "Sauvegardée en brouillon")]
    SauvegardéeEnBrouillon,
    // Draft,
    SoumisePourVérification,
    AerEnvoyé,
    Clôturée,
}