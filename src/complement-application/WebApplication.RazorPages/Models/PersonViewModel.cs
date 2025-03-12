namespace WebApplication.RazorPages.Models;

public class PersonViewModel
{
    public int Id { get; set; }
    public string FullName { get; set; }
    public string Email { get; set; }
    public DateTime BirthDate { get; set; }
    public bool IsAlive { get; set; }
    public string JobName { get; set; }
    public bool HasJob { get; set; }
}