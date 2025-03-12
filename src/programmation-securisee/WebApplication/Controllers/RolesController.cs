using Microsoft.AspNetCore.Mvc;

namespace WebApplication.Controllers
{
    public class RolesController : Controller
    {
        public RolesController()
        {
        }

        public IActionResult Index()
        {
            return View();
        }
    }
}