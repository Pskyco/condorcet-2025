using Microsoft.AspNetCore.Mvc.RazorPages;

namespace WebApplication.RazorPages.Pages.Persons;

public class Read : PageModel
{
    // [BindProperty] 
    public string FullName { get; set; }

    // [BindProperty]
    // [RegularExpression(".*\\.fr")]
    public string Email { get; set; }

    // [BindProperty] 
    public DateTime BirthDate { get; set; }

    // [BindProperty] 
    public bool IsAlive { get; set; }

    // https://localhost:44368/MyForm/Update/1
    // https://localhost:44368/MyForm/Update?id=1
    // https://localhost:44368/MyForm/Update?id=1&myId=65&email=john.doe@test.fr
    // https://localhost:44368/MyForm/Update/1?myId=65&email=john.doe@test.fr
    // public void OnGet(int id, int myId, string email)
    public void OnGet(int id)
    {
        Console.WriteLine($"My id is {id}");
        // TODO : retrieve from database 'Person' with id = 1
        if (id == 88)
        {
            FullName = "John Doe";
            Email = "john.doe@test.fr";
            BirthDate = new DateTime(1964, 04, 07);
            IsAlive = true;
        }
        else if (id == 96)
        {
            FullName = "Jean Dupont";
            Email = "jeandupont004@testoto.fr";
            BirthDate = new DateTime(1934, 12, 11);
            IsAlive = false;
        }
    }

    // public void OnGetAsync(string slug)
    // {
    //     // https://localhost:44368/MyForm/Update/salade-cesar
    //     // slug: salade-cesar
    //     // https://localhost:44368/MyForm/Update/salade%20cesar
    //     // slug: salade cesar
    // }
}