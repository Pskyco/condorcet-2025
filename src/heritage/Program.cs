// See https://aka.ms/new-console-template for more information

using heritage;

Console.WriteLine("Hello, World!");

// var student = new Student()
// {
//     FirstName = "John",
//     LastName = "Doe",
//     CurrentClass = "A",
//     CurrentYear = "MA1"
// };

// var teacher = new Teacher()
// {
//     FirstName = "Ludwig",
//     LastName = "Lebrun",
//     Matricule = "123456789"
// };

var student = new Student("John", "Doe", "A", "MA1");
// student = "";
// student = 1;
// student = false;
var teacher = new Teacher("Ludwig", "Lebrun", "123456789");

Console.WriteLine(student.GetDescription());
Console.WriteLine(teacher.GetDescription());

Console.WriteLine(student.GetAbstractDescription());
Console.WriteLine(teacher.GetAbstractDescription());

dynamic test = "";
Console.WriteLine(test.ToString());
test = 1;
Console.WriteLine(test.ToString());
test = true;
Console.WriteLine(test.ToString());
test = teacher;
Console.WriteLine(test.GetAbstractDescription());
test = student;
Console.WriteLine(test.GetAbstractDescription());