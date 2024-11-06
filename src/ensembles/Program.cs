// See https://aka.ms/new-console-template for more information

using System.Text.RegularExpressions;
using ensembles;

try
{
    Console.WriteLine("Hello, World!");

    List<int> integers = new List<int>();
    Console.WriteLine($"Ma liste contient actuellement {integers.Count}"); // output: 0

    integers.Add(1);
    integers.Add(2);
    integers.Add(3);
    integers.Add(4);
    integers.Add(5);

    Console.WriteLine($"Ma liste contient actuellement {integers.Count}"); // output: 5

    integers = new List<int>() { 1, 2, 3, 4, 5, 6, 7, 8, 9, 10 };
    integers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
// List<int> integers2 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

    Console.WriteLine($"Ma liste contient actuellement {integers.Count}"); // output: 10

// Garbage collector
// GC.Collect();

// sans codage défensif
    Console.WriteLine($"Mon premier élément est : {integers[0]}"); // output: 1
    Console.WriteLine($"Mon premier élément est : {integers[1]}"); // output: 2
    Console.WriteLine($"Mon premier élément est : {integers[2]}"); // output: 3

// avec codage défensif
    if (integers.Count >= 1)
        Console.WriteLine($"Mon premier élément est : {integers[0]}"); // output: 1
    if (integers.Count >= 2)
        Console.WriteLine($"Mon premier élément est : {integers[1]}"); // output: 2
    if (integers.Count >= 3)
        Console.WriteLine($"Mon premier élément est : {integers[2]}"); // output: 3

    int i = 0;
    foreach (var integer in integers)
    {
        Console.WriteLine($"Mon élément n°{i + 1} est : {integer}"); // output: 1,2,3
        i++;
    }

    for (int j = 0; j < integers.Count; j++)
    {
        Console.WriteLine($"Mon élément n°{j + 1} est : {integers[j]}"); // output: 1,2,3
    }

    var successfulyRemoved = integers.Remove(2); // only remove first occurence
    integers.RemoveAll(x => x == 2);
    if (integers.Count >= 3)
        integers.RemoveAt(2); // remove element at index 2 (= 3)
    // var integers2 = integers.ToList();
    // foreach (var integer in integers)
    // {
    //     if (integer == 2)
    //         integers2.Remove(integer); // remove element
    // }
    
    List<Person> persons = new List<Person>();
    var removedCount = persons.RemoveAll(x => x.FirstName == "Bernard" && x.LastName == "Kelvin");
    Console.WriteLine($"{removedCount} Bernard Kelvin ont été supprimés de ma liste.");
    removedCount = persons.RemoveAll(person => person.FirstName == "Bernard" && person.LastName == "Kelvin");
    
    // if we have 4 elements in our list : 1, 2, 3 ,4 (last index = 3) Count will return 4
    integers.Insert(4, 24); // in our case, will throw an exception // TODO
    integers.Add(24);
    
    // will erase elements starting from index 4 to the end
    // 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11
    var startingIndex = 4;
    integers.RemoveRange(startingIndex, integers.Count - (startingIndex + 1));
    integers.RemoveRange(3, 5); // remove elements starting from index 3 to index 8 (5 + 3)
    integers.RemoveRange(0, 3); // remove elements from index 0, 1, 2
    integers.Clear(); // will erase whole list
    
    Console.WriteLine($"Est-ce que ma liste contient le chiffre 3 ? {integers.Contains(3)}");
    Console.WriteLine($"Est-ce que ma liste contient des chiffres > 2 ? {integers.Exists(x => x > 2)}");

    List<string> integersToString = integers.Select(x => x.ToString()).ToList();
    string[] integersToStringArr = integers.Select(x => x.ToString()).ToArray();
    List<int> integersPlus2 = integers.Select(x => x + 2).ToList();

    Console.WriteLine($"Est-ce que ma liste contient des chaînes de caractères vides ? {integersToString.Exists(x => x == "")}");
    Console.WriteLine($"Est-ce que ma liste contient des chaînes de caractères vides ? {integersToString.Exists(x => string.IsNullOrWhiteSpace(x))}");
    integersToString.RemoveAll(x => string.IsNullOrWhiteSpace(x));
    integersToString.RemoveAll(string.IsNullOrWhiteSpace);

    int firstMatch = integers.Find(x => x > 2);
    List<int> allMatches = integers.FindAll(x => x > 2);

    List<int> orderByAsc = integers.OrderBy(x => x).ToList();
    List<int> orderByDesc = integers.OrderByDescending(x => x).ToList();
    
    integers.Add(2);
    integers.AddRange([2,3,4,5,6,7,8,9]);

    List<int> integers2 = integers.ToList();
    integers.AddRange(integers2);

    var areAllPositive = integers.All(x => x > 0);
    var areAnyPositive = integers.Any(x => x > 0);

    var setAllUppercase = integersToString.Select(x => x.ToUpper()).ToList();
    // CONDORCET, CYBERSECURITÉ
    // CONDORCET
    /// C
    /// O
    /// N
    // CYBERSECURITÉ
    var areAllUppercase = integersToString.All(stringg => stringg.All(charr => charr.ToString() == charr.ToString().ToUpper()));
    var areAllUppercase2 = integersToString.All(stringg => stringg == stringg.ToUpper());
    
    // x => x = lambda expression
    List<Person> persons2 = persons.OrderBy(x => x.FirstName).ThenByDescending(x => x.LastName).ToList();
    List<Person> persons3 = persons.OrderByDescending(x => x.FirstName).ThenBy(x => x.LastName).ToList();

    var personNamedBernard = persons.FirstOrDefault(x => x.FirstName == "Bernard");
    var personsWithFirstNameStartingWithB = persons.Where(x => x.FirstName.StartsWith("B", StringComparison.CurrentCultureIgnoreCase)).ToList();
    var personsWithFirstNameStartingWithB2 = persons.Where(x => new Regex("B.*").IsMatch(x.FirstName)).ToList();
    var personsWithFirstNameEndingWithD = persons.Where(x => x.FirstName.EndsWith("d")).ToList();
    
    // skip 0 elements starting from begining and take the following 25 ones (0 -> 25)
    var subPersons = persons.Skip(0).Take(25);
    // 26 -> 50
    var subPersons2 = persons.Skip(25).Take(25);
    // 51 -> 75
    var subPersons3 = persons.Skip(50).Take(25);
    
    // ^
    // B.*
    // $
    
    var maxInt = integers.Max();
    var minInt = integers.Min();
    var avgInt = integers.Average();
}
catch (Exception ex)
{
    Console.WriteLine($"Catch exception : {ex.Message}\n{ex.StackTrace}");
}