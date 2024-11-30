using System.Diagnostics;

namespace EventApp;

public class BackgroundTask
{
    public EventHandler<BackgroundTaskEventArgs>? OnBackgroundTaskCompleted;
    
    public void StartProcessing()
    {
        var sw = new Stopwatch();
        sw.Start();
        Thread.Sleep(5000);
        OnProcessCompleted(new BackgroundTaskEventArgs()
        {
            CompletionTime = DateTime.Now,
            IsSuccess = true,
            ProcessDurationInMs = sw.ElapsedMilliseconds
        });
    }

    private void OnProcessCompleted(BackgroundTaskEventArgs backgroundTaskEventArgs)
    {
        if (OnBackgroundTaskCompleted != null) OnBackgroundTaskCompleted.Invoke(this, backgroundTaskEventArgs);
    }
}