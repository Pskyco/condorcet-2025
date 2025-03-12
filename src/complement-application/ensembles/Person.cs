using System.ComponentModel.DataAnnotations;

namespace ensembles;

public class Person
{
    public string NationalNumber { get; set; }
    public string FirstName { get; set; }
    [MaxLength(11)]
    public string LastName { get; set; }
}