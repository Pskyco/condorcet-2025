namespace poo;

public class TeacherAsJava
{
    private string _firstName;

    public string FirstName
    {
        get { return GetFirstName(); }
        set { SetFirstName(value); }
    }

    private void SetFirstName(string value)
    {
        _firstName = value;
    }

    private string GetFirstName()
    {
        return _firstName;
    }

    public TeacherAsJava()
    {
    }
}