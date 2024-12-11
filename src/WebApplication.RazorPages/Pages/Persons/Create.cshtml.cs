using System.ComponentModel.DataAnnotations;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;

namespace WebApplication.RazorPages.Pages.Persons;

public class Create : PageModel
{
    [BindProperty] 
    public string FullName { get; set; }
    
    [BindProperty]
    [RegularExpression(".*\\.fr")]
    public string Email { get; set; }

    [BindProperty] public DateTime BirthDate { get; set; }
    [BindProperty] public bool IsAlive { get; set; }

    public void OnGet()
    {
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