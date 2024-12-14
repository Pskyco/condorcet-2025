# Setup Entity Framework

## Step 1 : install required NuGet packages

* Microsoft.EntityFrameworkCore.Design : required to handle migrations
* Microsoft.EntityFrameworkCore.Sqlite : required to use a Sqlite database
  * Other packages can be found for other database providers

## Step 2 : install required SDK tools

### Check if .NET SDK is installed

``dotnet --version``

If there is an error while running above command, please install .NET SDK: https://dotnet.microsoft.com/en-us/download/dotnet/thank-you/sdk-8.0.404-windows-x64-installer

To install or update "dotnet ef tools", use the following command:

### Install Entity Framework tools

``dotnet tool install --global dotnet-ef``

To check if "dotnet ef tools" have been correctly installed, use the following command :

``dotnet ef``
=> should return 'dotnet' welcome page

``cd ..``

Cheatsheet : https://github.com/rstropek/htl-csharp/blob/master/entity-framework/ef-aspnet-cheat-sheet.md

### Create your first migration

#### Naming conventions

Some people name their migration regarding the operations done on the database, eg: "I have created a 'Person' database, so my migration will be 'CreatePerson'".

In some cases, names can be very long, or not so accurate.

That's why I prefer "version number" migrations, like V1, V2, V3...

### Command line

If your command line is in a root folder (with a lot of projects), you'll have to set the ``--project`` directive

* Add migration
``dotnet ef migrations add V1 --project .\WebApplication.RazorPages\``

```
Build started...
Build succeeded.
Done. To undo this action, use 'ef migrations remove'
```

* Remove migration
``dotnet ef migrations remove --project .\WebApplication.RazorPages\ ``

```
Build started...
Build succeeded.
Removing migration '20241214100523_V1'.
Removing model snapshot.
Done.
```

* List migrations
  ``dotnet ef migrations list --project .\WebApplication.RazorPages\ ``

```
Build started...
Build succeeded.
No migrations were found.
```