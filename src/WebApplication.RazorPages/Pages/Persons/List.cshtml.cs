using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using WebApplication.RazorPages.Models;

namespace WebApplication.RazorPages.Pages.Persons;

public class List : PageModel
{
    public List<Person> Persons { get; set; }

    public void OnGet()
    {
        // TODO: retrieve from database whole person list
        Persons = new List<Person>()
        {
            new Person()
            {
                Id = 88,
                FullName = "John Doe",
                Email = "john.doe@test.fr",
                BirthDate = new DateTime(1964, 04, 07),
                IsAlive = true,
            },
            new Person()
            {
                Id = 96,
                FullName = "Jean Dupont",
                Email = "jeandupont004@testoto.fr",
                BirthDate = new DateTime(1934, 12, 11),
                IsAlive = false
            },
        };
    }
    
    // "Handler" of name "Delete"
    public IActionResult OnGetDelete(int id)
    {
        // TODO: retrieve from database 'Person' with Id = id
        Console.WriteLine($"Delete element of id : {id}");
        return RedirectToPage("List");
    }
}