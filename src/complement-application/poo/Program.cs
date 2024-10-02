// See https://aka.ms/new-console-template for more information

using poo;

Console.WriteLine("Hello, World!");

Teacher teacher = new Teacher("Ludwig", "Lebrun");

var teacher2 = new Teacher("Ludwig", "Lebrun2");

//teacher2 = "string";

Console.WriteLine("Le nom de mon professeur est " + teacher.LastName + " et son prénom est " + teacher.FirstName);
Console.WriteLine($"Le nom de mon professeur est {teacher.LastName} et son prénom est {teacher.FirstName}");
Console.WriteLine(string.Format("Le nom de mon professeur est {0} et son prénom est {1}", teacher.LastName, teacher.FirstName));