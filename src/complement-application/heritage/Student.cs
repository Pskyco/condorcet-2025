namespace heritage;

public class Student : Person
{
    public string CurrentClass { get; private set; }
    public string CurrentYear { get; private set; }

    public Student(string firstName, string lastName, string currentClass, string currentYear) 
        : base(firstName, lastName)
    {
        CurrentClass = currentClass;
        CurrentYear = currentYear;
    }

    // public void MoveClass(string nextClass, string nextYear)
    // {
    //     CurrentClass = nextClass;
    //     CurrentYear = nextYear;
    // }

    public override string GetAbstractDescription()
    {
        return $"Le nom de mon élève est {LastName} et son prénom est {this.FirstName}";
    }
}