// See https://aka.ms/new-console-template for more information

using enums;
using enums.MyMinfin;
using enums.MyMinfin.Enums;
using poo;

var teacher1 = new Teacher();
Console.WriteLine($"Mon professeur s'appelle {teacher1.FirstName} {teacher1.LastName}"); // output: Mon professeur s'appelle John Doe
teacher1.SetFirstName("Jane");
Console.WriteLine($"Mon professeur s'appelle {teacher1.FirstName} {teacher1.LastName}"); // output: Mon professeur s'appelle Jane Doe
var teacher2 = new Teacher();
Console.WriteLine($"Mon professeur s'appelle {teacher2.FirstName} {teacher2.LastName}"); // output: Mon professeur s'appelle John Doe

// // var teacherAsJava = new TeacherAsJava();
// // teacherAsJava.NationalNumber = "123";
// // teacherAsJava.SetNationalNumber("123");
//
// Console.WriteLine("Hello, World!");
//
// Teacher teacher = new Teacher("Ludwig", "Lebrun");
//
// var teacher2 = new Teacher("Ludwig", "Lebrun2");
//
// //teacher2 = "string";
//
// Console.WriteLine("Le nom de mon professeur est " + teacher.LastName + " et son prénom est " + teacher.FirstName);
// Console.WriteLine($"Le nom de mon professeur est {teacher.LastName} et son prénom est {teacher.FirstName}");
// Console.WriteLine($"Le nom de mon professeur est {teacher.LastName} et son prénom est {teacher.FirstName}");
//
// // teacher.DescribeMyself();
// // teacher.DescribeMyselfAsString();
// teacher.DescribeToConsole();
// var teacherDescription = teacher.GetDescription();
//
// // Console.WriteLine(teacher); -- same as Console.WriteLine(teacher.ToString());
// Console.WriteLine(teacher.ToString());
//
// // CTRL+R+R for renaming
// // CTRL+K+D for re-indent & clean code
// // Doc breakpoint
// // F9
// // F10
// // F11
// // SHIFT+F9

Console.WriteLine($"{DeclarationFiscaleStatus.SoumisePourVérification}");