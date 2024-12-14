using System.ComponentModel.DataAnnotations;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.AspNetCore.Mvc.Rendering;
using WebApplication.RazorPages.Models;

namespace WebApplication.RazorPages.Pages.Persons;

public class Create : PageModel
{
    [BindProperty] public string FullName { get; set; }

    [BindProperty]
    [RegularExpression(".*\\.fr")]
    public string Email { get; set; }

    [BindProperty] public DateTime BirthDate { get; set; }
    [BindProperty] public bool IsAlive { get; set; }
    [BindProperty] public CivilStatusEnum CivilStatus { get; set; }
    [BindProperty] public string Job { get; set; }
    public IEnumerable<SelectListItem> SliJobs { get; set; }

    public void OnGet()
    {
        SliJobs = new List<SelectListItem>()
        {
            new() { Value = "", Text = "" },
            new() { Value = "Employé", Text = "Employé" },
            new() { Value = "Ouvrier", Text = "Ouvrier" },
            new() { Value = "Indépendant", Text = "Indépendant" },
            new() { Value = "Chef d'entreprise", Text = "Chef d'entreprise" },
            new() { Value = "Cadre", Text = "Cadre" },
            new() { Value = "Profession libérale", Text = "Profession libérale" },
            new() { Value = "Fonctionnaire", Text = "Fonctionnaire" },
            new() { Value = "Enseignant", Text = "Enseignant" },
            new() { Value = "Politicien", Text = "Politicien" },
            new() { Value = "Journaliste", Text = "Journaliste" },
            new() { Value = "Artiste", Text = "Artiste" },
            new() { Value = "Artisan", Text = "Artisan" },
            new() { Value = "Retraité", Text = "Retraité" },
            new() { Value = "Etudiant", Text = "Etudiant" },
            new() { Value = "Demandeur d'emploi", Text = "Demandeur d'emploi" },
            new() { Value = "Sans", Text = "Sans" },
            new() { Value = "Autre", Text = "Autre" }
        };
    }

    public IActionResult OnPost()
    {
        // if(string.IsNullOrWhiteSpace(FullName))
        //     throw new Exception("Full name is required");
        // ModelState.IsValid permet de facilement valider l'ensemble des pré-requis définis
        // sous la forme de "DataAttribute" = [RegularExpression..] etc..
        // Par défaut, si le champ est "non nullable" = pas de ? à la fin du type, les champs
        // sont considérés comme "requis". 
        // Pour certains types, .NET affectera des valeurs par défaut.
        // (Date = 01-01-0001, booléen = false, integer = 0)
        if (!ModelState.IsValid)
            return Page(); // on renvoie vers le formulaire avec les messages d'erreur

        Console.WriteLine($"Email: {Email}, BirthDate: {BirthDate}");
        Console.WriteLine($"FullName: {FullName}, IsAlive: {IsAlive}");

        // TODO : save in database
        return RedirectToPage("/Index");
    }
}