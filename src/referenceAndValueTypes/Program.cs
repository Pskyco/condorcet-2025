// See https://aka.ms/new-console-template for more information

using referenceAndValueTypes;

Console.WriteLine("Hello, World!");

var cup = new CupOfCoffee();
cup.IsFilled = false;
Console.WriteLine($"Est-ce que ma tasse de café est remplie ? {cup.IsFilled}");
FillCup(cup);

// reference type
void FillCup(CupOfCoffee cupOfCoffee)
{
    cupOfCoffee.IsFilled = true;
}

Console.WriteLine($"Est-ce que ma tasse de café est remplie ? {cup.IsFilled}");

var myNumber = 1;
Console.WriteLine($"Combien vaut mon nombre ? {myNumber}");
IncreaseNumber(myNumber);

void IncreaseNumber(int number)
{
    number = number + 1;
}

Console.WriteLine($"Combien vaut mon nombre ? {myNumber}");

var myNumber2 = IncreaseNumber2(myNumber);

int IncreaseNumber2(int number)
{
    return number + 1;
}

Console.WriteLine($"Combien vaut mon nombre ? {myNumber}");
Console.WriteLine($"Combien vaut mon nombre ? {myNumber2}");

cup.IsFilled = false;