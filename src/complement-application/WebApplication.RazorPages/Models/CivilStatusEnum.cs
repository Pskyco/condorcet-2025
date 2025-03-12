using System.ComponentModel.DataAnnotations;

namespace WebApplication.RazorPages.Models;

public enum CivilStatusEnum
{
    [Display(Name = "Célibataire")]
    Single,
    [Display(Name = "Marrié.e")]
    Married,
    [Display(Name = "En cohabitation légale")]
    LegallyCohabiting,
    [Display(Name = "Veuf/veuve")]
    Widowed,
    [Display(Name = "Autre")]
    Other
}