namespace EventApp;

public class BackgroundTaskEventArgs : EventArgs
{
    public bool IsSuccess { get; set; }
    public DateTime CompletionTime { get; set; }
    public long ProcessDurationInMs { get; set; }
}