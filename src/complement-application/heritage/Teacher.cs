namespace heritage;

public class Teacher : Person
{
    public string Matricule { get; set; }

    public Teacher(string firstName, string lastName, string matricule) : base(firstName, lastName)
    {
        Matricule = matricule;
    }
    
    public override string GetDescription()
    {
        return $"Le nom de mon professeur est {LastName} et son prénom est {this.FirstName}";
    }

    public override string GetAbstractDescription()
    {
        return $"Le nom de mon professeur est {LastName} et son prénom est {this.FirstName}";
    }
}