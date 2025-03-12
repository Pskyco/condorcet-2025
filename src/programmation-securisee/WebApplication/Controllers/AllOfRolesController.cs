using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;

namespace WebApplication.Controllers
{
    [Authorize(Roles = "Management")]
    [Authorize(Roles = "HR")] // need both roles
    public class AllOfRolesController : Controller
    {
        public AllOfRolesController()
        {
        }

        public IActionResult Index()
        {
            return Content("HR && Management");
        }
    }
}