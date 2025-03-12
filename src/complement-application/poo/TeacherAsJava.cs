namespace poo;

public class TeacherAsJava
{
    private string _nationalNumber;

    public string NationalNumber
    {
        get { return _nationalNumber; }
        private set { _nationalNumber = value; }
    }

    public void SetNationalNumber(string value)
    {
        if (value.Length != 11) // YY MM DD 123 86
            throw new Exception("National number must be 11 char long");
        _nationalNumber = value;
    }

    public string GetFirstName()
    {
        return _nationalNumber;
    }

    public TeacherAsJava()
    {
    }
}