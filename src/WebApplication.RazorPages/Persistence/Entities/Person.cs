namespace WebApplication.RazorPages.Persistence.Entities;

public class Person
{
    public int Id { get; set; }
    public string FullName { get; set; }
    public string Email { get; set; }
    public DateTime BirthDate { get; set; }
    public bool IsAlive { get; set; }
}