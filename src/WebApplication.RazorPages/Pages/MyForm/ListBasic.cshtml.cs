using Microsoft.AspNetCore.Mvc.RazorPages;
using WebApplication.RazorPages.Models;

namespace WebApplication.RazorPages.Pages.MyForm;

public class ListBasic : PageModel
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
}