using System.Diagnostics;
using Microsoft.AspNetCore.Mvc;
using WebApplication1.Models;

namespace WebApplication1.Controllers;

public class HomeController : Controller
{
    private readonly ILogger<HomeController> _logger;

    public HomeController(ILogger<HomeController> logger)
    {
        _logger = logger;
    }

    public IActionResult Index3()
    {
        return View();
    }

    public IActionResult Index2()
    {
        return View("Index");
    }

    public IActionResult Index()
    {
        return View();
    }

    public IActionResult Privacy()
    {
        return View();
    }

    [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
    public IActionResult Error()
    {
        return View(new ErrorViewModel
        {
            RequestId = Activity.Current != null ? Activity.Current.Id : HttpContext.TraceIdentifier
        });

        // return View(new ErrorViewModel
        // {
        //     RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier
        // });
    }
}