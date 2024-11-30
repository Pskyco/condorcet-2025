// See https://aka.ms/new-console-template for more information

using EventApp;

void HandleOnBackgroundTaskCompleted(object sender, BackgroundTaskEventArgs backgroundTaskEventArgs)
{
    Console.WriteLine("Background task completed");
    Console.WriteLine($"A quelle date et heure ma tâche s'est-elle terminée ? {backgroundTaskEventArgs.CompletionTime}");
    Console.WriteLine($"Combien de temps (en ms) ma tâche a-t'elle duré ? {backgroundTaskEventArgs.ProcessDurationInMs}");
    Console.WriteLine($"Ma tâche est-elle en succès ? {backgroundTaskEventArgs.IsSuccess}");
}

Console.WriteLine("Hello, World!");

var backgroundTask = new BackgroundTask();
backgroundTask.OnBackgroundTaskCompleted += HandleOnBackgroundTaskCompleted;
backgroundTask.StartProcessing();
backgroundTask.OnBackgroundTaskCompleted -= HandleOnBackgroundTaskCompleted;