namespace poo;

public class Teacher
{
    public string FirstName { get; set; }
    public string LastName { get; set; }

    public Teacher(string firstName, string lastName)
    {
        FirstName = firstName;
        LastName = lastName;
    }

    public void DescribeMyself()
    {
        // this. is not mandatory in this case
        Console.WriteLine($"Le nom de mon professeur est {LastName} et son prénom est {this.FirstName}");
    }
}