namespace heritage;

public abstract class Person : Object
{
    public string LastName { get; private set; }
    public string FirstName { get; private set; }
    protected Person(string firstName, string lastName)
    {
        FirstName = firstName;
        LastName = lastName;
    }
    public virtual string GetDescription()
    {
        return $"Le nom de cette personne est {LastName} et son prénom est {this.FirstName}";
    }
    public abstract string GetAbstractDescription();
}