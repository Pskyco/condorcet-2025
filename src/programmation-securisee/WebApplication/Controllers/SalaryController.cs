using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;

namespace WebApplication.Controllers
{
    public class SalaryController : Controller
    {
        public SalaryController()
        {
        }

        [Authorize("Salary.R")]
        public IActionResult SalaryR()
        {
            return Content("SalaryR");
        }

        [Authorize("Salary.W")]
        public IActionResult SalaryW()
        {
            return Content("SalaryW");
        }
    }
}