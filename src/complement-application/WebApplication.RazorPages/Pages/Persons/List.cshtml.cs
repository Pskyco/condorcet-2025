using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.EntityFrameworkCore;
using WebApplication.RazorPages.Models;
using WebApplication.RazorPages.Persistence;
using WebApplication.RazorPages.Persistence.Entities;

namespace WebApplication.RazorPages.Pages.Persons;

public class List : PageModel
{
    private readonly ApplicationDbContext _context;
    public List<PersonViewModel> Persons { get; set; }

    // https://github.com/nabinked/NToastNotify
    public List(ApplicationDbContext context/*, IToastNotification toastNotification*/)
    {
        _context = context;
        // _toastNotification = toastNotification;
    }

    public async Task OnGetAsync()
    {
        Persons = await _context.Set<Person>()
            // .Include(person => person.Job)
            .Select(person => new PersonViewModel()
            {
                Id = person.Id,
                BirthDate = person.BirthDate,
                FullName = person.FullName,
                Email = person.Email,
                IsAlive = person.IsAlive,
                HasJob = person.Job != null,
                JobName = person.Job.Name
            })
            .ToListAsync();
        // TODO: retrieve from database whole person list
        // Persons = new List<Person>()
        // {
        //     new Person()
        //     {
        //         Id = 88,
        //         FullName = "John Doe",
        //         Email = "john.doe@test.fr",
        //         BirthDate = new DateTime(1964, 04, 07),
        //         IsAlive = true,
        //     },
        //     new Person()
        //     {
        //         Id = 96,
        //         FullName = "Jean Dupont",
        //         Email = "jeandupont004@testoto.fr",
        //         BirthDate = new DateTime(1934, 12, 11),
        //         IsAlive = false
        //     },
        // };
    }

    // "Handler" of name "Delete"
    public async Task<IActionResult> OnGetDeleteAsync(int id)
    {
        // TODO: retrieve from database 'Person' with Id = id

        var person = await _context.Set<Person>().FirstOrDefaultAsync(x => x.Id == id);

        if (person == null)
        {
            // _toastNotification.AddErrorMessage("La personne n'a pas été trouvée");
            // return RedirectToPage("List");
            throw new KeyNotFoundException($"Person with id {id} not found");
        }
        
        _context.Remove(person);
        await _context.SaveChangesAsync();
        // _toastNotification.AddSuccessMessage("La suppression a été effectuée avec succès");
        
        Console.WriteLine($"Delete element of id : {id}");
        return RedirectToPage("List");
    }
}