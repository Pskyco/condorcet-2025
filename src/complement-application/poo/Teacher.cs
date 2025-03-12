namespace poo;

public class Teacher : Object
{
    // [Display(Name = "First name")]
    public string FirstName { get; private set; }
    public string LastName { get; set; }

    public Teacher()
    {
        // Define default value on init
        FirstName = "John";
        LastName = "Doe";
    }
    
    public Teacher(string firstName, string lastName)
    {
        FirstName = firstName;
        LastName = lastName;
    }
    
    public void SetFirstName(string firstName)
    {
        FirstName = firstName;
    }

    // public string DescribeMyself()
    public void DescribeToConsole()
    {
        // this. is not mandatory in this case
        Console.WriteLine(GetDescription());
    }

    // public string DescribeMyselfAsString()
    public string GetDescription()
    {
        return $"Le nom de mon professeur est {LastName} et son prénom est {this.FirstName}";
    }

    public override string ToString()
    {
        // Console.WriteLine(base.ToString());
        return $"{nameof(FirstName)}: {FirstName}, {nameof(LastName)}: {LastName}";
    }

    // Draw(1);
    // Draw(1, 2);
    // public void Draw()
    // {
    //     
    // }
    //
    // public void Draw(int a)
    // {
    //     
    // }
    //
    // public void Draw(int a, int b)
    // {
    //     
    // }
    //
    // public void Draw(int a, int? b = null)
    // {
    //     
    // }
}