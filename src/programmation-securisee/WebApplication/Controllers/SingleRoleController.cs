using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;

namespace WebApplication.Controllers
{
    // [Authorize] // means that only connected users can access to this controller
    [Authorize(Roles = "Management")] // only Management role can access this controller
    public class SingleRoleController : BaseController
    {
        public SingleRoleController()
        {
        }

        // [Authorize(Roles = "Management")] // only Management role can access this endpoint
        public IActionResult Index() => Content("Role: Management");

        [AllowAnonymous] // un-auth users can access this endpoint
        public IActionResult IndexAnonymous() => Content("AllowAnonymous");
    }
}