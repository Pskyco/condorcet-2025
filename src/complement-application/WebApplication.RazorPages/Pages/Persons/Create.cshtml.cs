using System.ComponentModel.DataAnnotations;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using WebApplication.RazorPages.Models;
using WebApplication.RazorPages.Persistence;
using WebApplication.RazorPages.Persistence.Entities;

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
    [BindProperty] /*[Range(1, 18)]*/ public int JobId { get; set; }
    public IEnumerable<SelectListItem> SliJobs { get; set; }

    private readonly ApplicationDbContext _context;

    public Create(ApplicationDbContext context)
    {
        _context = context;
    }

    // sync mode
    // public void OnGet()
    // {
    //     // eg: task is done in 10 ms
    //     List<Job> jobs = _context.Set<Job>().ToList();
    //     // eg: task is done in 30 ms
    //     List<Person> persons = _context.Set<Person>().ToList();
    //     // total exec time : 40 ms
    // }

    // async mode
    public async Task OnGetAsync()
    {
        // select * from Jobs
        // eg: task is done in 10 ms
        List<Job> jobs = await _context.Set<Job>().ToListAsync();
        // eg: task is done in 30 ms
        // List<Person> persons = await _context.Set<Person>().ToListAsync();
        // total exec time : 30 ms
        SliJobs = jobs.Select(job => new SelectListItem() { Value = job.Id.ToString(), Text = job.Name }).ToList();

        // select * from Jobs where Id > 4
        // List<Job> jobs2 = await _context.Set<Job>().Where(job => job.Id > 4).ToListAsync();
        // select * from Jobs where Id > 4 order by Name desc
        // List<Job> jobs3 = await _context.Set<Job>().Where(job => job.Id > 4).OrderByDescending(job => job.Name).ToListAsync();

        // old way
        // SliJobs = new List<SelectListItem>()
        // {
        //     new() { Value = "", Text = "" },
        //     new() { Value = "Employé", Text = "Employé" },
        //     new() { Value = "Ouvrier", Text = "Ouvrier" },
        //     new() { Value = "Indépendant", Text = "Indépendant" },
        //     new() { Value = "Chef d'entreprise", Text = "Chef d'entreprise" },
        //     new() { Value = "Cadre", Text = "Cadre" },
        //     new() { Value = "Profession libérale", Text = "Profession libérale" },
        //     new() { Value = "Fonctionnaire", Text = "Fonctionnaire" },
        //     new() { Value = "Enseignant", Text = "Enseignant" },
        //     new() { Value = "Politicien", Text = "Politicien" },
        //     new() { Value = "Journaliste", Text = "Journaliste" },
        //     new() { Value = "Artiste", Text = "Artiste" },
        //     new() { Value = "Artisan", Text = "Artisan" },
        //     new() { Value = "Retraité", Text = "Retraité" },
        //     new() { Value = "Etudiant", Text = "Etudiant" },
        //     new() { Value = "Demandeur d'emploi", Text = "Demandeur d'emploi" },
        //     new() { Value = "Sans", Text = "Sans" },
        //     new() { Value = "Autre", Text = "Autre" }
        // };
    }

    public async Task<IActionResult> OnPostAsync()
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

        if (!_context.Set<Job>().Any(job => job.Id == JobId))
            throw new KeyNotFoundException($"Job with id {JobId} was not found");

        Console.WriteLine($"Email: {Email}, BirthDate: {BirthDate}");
        Console.WriteLine($"FullName: {FullName}, IsAlive: {IsAlive}");

        // await _context.Database.BeginTransactionAsync();
        // await _context.Database.CommitTransactionAsync();
        // await _context.Database.RollbackTransactionAsync();

        Person person = new Person();
        person.Email = Email;
        person.FullName = FullName;
        person.BirthDate = BirthDate;
        person.IsAlive = IsAlive;
        person.JobId = JobId;

        // _context.Set<Person>().Add(person);
        await _context.Set<Person>().AddAsync(person);
        await _context.SaveChangesAsync();

        return RedirectToPage("/Index");
    }
}