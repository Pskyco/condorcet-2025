// See https://aka.ms/new-console-template for more information

Console.WriteLine("Hello, World!");
var integers = new List<int>()
{
    1,
    45,
    23,
    155,
    355,
    3,
    12
};

PrintWhile();
PrintForI();
PrintForEach();

void PrintWhile()
{
    int i = 0;
// while (i < integers.Count)
    while (i <= integers.Count - 1)
    {
        var integer = integers[i];
        if (integer == 355)
        {
            break; // La boucle est totalement arrêtée
        }
        else if (integer == 23)
        {
            i++;
            continue; // "Passe à l'itération suivante"
        }
        else
        {
            Console.WriteLine($"[1] Mon entier à l'index {i} est {integer}");
        }

        i++;
    }
}

void PrintForI()
{
// for (int i = 0; i < 7; i++)
// for (int i = 0; i <= 7; i++) // will throw a 'ArgumentOutOfRangeException : Index was out of range'
// for (int i = 0; i <= 6; i++)
    for (int i = 0; i < integers.Count; i++)
    {
        var integer = integers[i];
        if (integer == 355)
        {
            break; // La boucle est totalement arrêtée
        }
        else if (integer == 23)
        {
            continue; // "Passe à l'itération suivante"
        }
        else
        {
            Console.WriteLine($"[1] Mon entier à l'index {i} est {integer}");
        }
    }

    for (int i = 2; i < integers.Count; i++)
    {
        Console.WriteLine($"[2] Mon entier à l'index {i} est {integers[i]}");
    }

    for (int i = 0; i < integers.Count - 2; i++)
    {
        Console.WriteLine($"[3] Mon entier à l'index {i} est {integers[i]}");
    }

    for (int i = integers.Count - 1; i >= 0; i--)
    {
        Console.WriteLine($"[4] Mon entier à l'index {i} est {integers[i]}");
    }
}

void PrintForEach()
{
    int index = 0;
    foreach (int integer in integers)
    {
        if (integer == 355)
        {
            break; // La boucle est totalement arrêtée
        }
        else if (integer == 23)
        {
            continue; // "Passe à l'itération suivante"
        }
        else
        {
            Console.WriteLine($"[1] Mon entier à l'index {index} est {integer}");
            // index = index + 1;
            // index += 1;
            index++;
        }
    }

    Console.WriteLine("=================================");

    index = 0;
    foreach (int integer in integers)
    {
        if (integer == 355)
            break; // La boucle est totalement arrêtée

        if (integer == 23)
            continue; // "Passe à l'itération suivante"

        Console.WriteLine($"[2] Mon entier à l'index {index} est {integer}");
        // index = index + 1;
        // index += 1;
        index++;
    }

    Console.WriteLine("=================================");

    index = -1;
    foreach (int integer in integers)
    {
        index++;

        if (index < 2)
            continue;

        Console.WriteLine($"[3] Mon entier à l'index {index} est {integer}");
    }

    Console.WriteLine("La suite du programme continue");
}