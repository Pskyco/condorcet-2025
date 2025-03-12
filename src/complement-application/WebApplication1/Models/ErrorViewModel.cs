namespace WebApplication1.Models;

public class ErrorViewModel
{
    public string? RequestId { get; set; }

    public bool ShowRequestId => !string.IsNullOrEmpty(RequestId);

    public bool ShowRequestId2
    {
        get
        {
            return !string.IsNullOrEmpty(RequestId);
        }
    }

    public string MyPasswordDb => "ThisIsMyPassword123$$";
}