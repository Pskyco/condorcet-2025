using Microsoft.AspNetCore.Mvc;

namespace WebApplication.Controllers
{
    public class CorsController : Controller
    {
        public CorsController()
        {
        }

        public IActionResult Index()
        {
            return View();
        }
    }
}