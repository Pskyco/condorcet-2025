// See https://aka.ms/new-console-template for more information

Console.WriteLine("Hello, World!");

var userKey = Console.ReadKey();

if (userKey.KeyChar == '1')
    Console.WriteLine("L'utilisateur a appuyé sur la touche '1'");

Console.WriteLine("La suite du programme continue");

if (userKey.KeyChar == '1')
    Console.WriteLine("L'utilisateur a appuyé sur la touche '1'");
else
    Console.WriteLine("L'utilisateur a appuyé sur une autre touche que '1'");

Console.WriteLine("La suite du programme continue");

Console.WriteLine(userKey.KeyChar == '1'
    ? "L'utilisateur a appuyé sur la touche '1'"
    : "L'utilisateur a appuyé sur une autre touche que '1'");

Console.WriteLine("La suite du programme continue");

Console.WriteLine(userKey.KeyChar == '1'
    ? "L'utilisateur a appuyé sur la touche '1'"
    : userKey.KeyChar == '2'
        ? "L'utilisateur a appuyé sur la touche '2'"
        : userKey.KeyChar == '3'
            ? "L'utilisateur a appuyé sur la touche '3'"
            : "L'utilisateur a appuyé sur une autre touche que '1', '2' ou '3'");

Console.WriteLine("La suite du programme continue");

if (userKey.KeyChar == '1')
{
    Console.WriteLine("L'utilisateur a appuyé sur la touche '1'");
}
else
{
    Console.WriteLine("L'utilisateur a appuyé sur une autre touche que '1'");
    if (userKey.KeyChar == '2')
    {
        Console.WriteLine("L'utilisateur a appuyé sur la touche '2'");
    }
    else
    {
        Console.WriteLine("L'utilisateur a appuyé sur une autre touche que '2'");
        if (userKey.KeyChar == '3')
        {
            Console.WriteLine("L'utilisateur a appuyé sur la touche '3'");
        }
        else
        {
            Console.WriteLine("L'utilisateur a appuyé sur une autre touche que '3'");
        }
    }
}

Console.WriteLine("La suite du programme continue");

if (userKey.KeyChar == '1')
{
    Console.WriteLine("L'utilisateur a appuyé sur la touche '1'");
}
else if (userKey.KeyChar == '2')
{
    Console.WriteLine("L'utilisateur a appuyé sur la touche '2'");
}
else if (userKey.KeyChar == '3')
{
    Console.WriteLine("L'utilisateur a appuyé sur la touche '3'");
}
else
{
    Console.WriteLine("L'utilisateur a appuyé sur une autre touche que '1' ou '2' ou '3'");
}

Console.WriteLine("La suite du programme continue");

switch (userKey.KeyChar)
{
    case '1':
        Console.WriteLine("L'utilisateur a appuyé sur la touche '1'");
        break;
    case '2':
        Console.WriteLine("L'utilisateur a appuyé sur la touche '2'");
        break;
    case '3':
        Console.WriteLine("L'utilisateur a appuyé sur la touche '3'");
        break;
    case '€':
        Console.WriteLine("L'utilisateur a appuyé sur la touche '€'");
        break;
    default:
        Console.WriteLine("L'utilisateur a appuyé sur une autre touche que '1' ou '2' ou '3'");
        break;
}

Console.WriteLine("La suite du programme continue");

switch (userKey.KeyChar)
{
    case '1':
    case '3':
        Console.WriteLine("L'utilisateur a appuyé sur l'une des touches suivantes : '1' ou '3'");
        break;
    case '2':
        Console.WriteLine("L'utilisateur a appuyé sur l'une des touches suivantes : '2'");
        break;
    default:
        Console.WriteLine("L'utilisateur a appuyé sur une autre touche que '1' ou '2' ou '3'");
        break;
}

Console.WriteLine("La suite du programme continue");