using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;

namespace WebApplication.Controllers
{
    [Authorize(Roles = "Management,HR")] // user need one of these roles (but not all roles)
    public class OneOfRoleController : Controller
    {
        public OneOfRoleController()
        {
        }

        public IActionResult Index()
        {
            return Content("Management || HR");
        }

        [Authorize(Roles = "Management")] // override default. 'Finance' won't be allowed here because it's not in the base list of 'Management or HR'.
        public IActionResult Index2()
        {
            return Content("Management");
        }
    }
}