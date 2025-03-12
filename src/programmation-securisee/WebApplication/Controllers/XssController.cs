using Ganss.XSS;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using WebApplication.Models;

namespace WebApplication.Controllers
{
    public class XssController : Controller
    {
        private readonly ILogger<XssController> _logger;

        public XssController(ILogger<XssController> logger)
        {
            _logger = logger;
        }

        public IActionResult Index()
        {
            return Index(new User());
        }

        [HttpPost]
        public IActionResult Index(User user)
        {
            return View(user);
        }
        
        [HttpPost]
        public IActionResult IndexSanitized(User user)
        {
            user.Username = new HtmlSanitizer().Sanitize(user.Username);
            return View("Index", user);
        }

        public IActionResult UnsafeJs(int userId)
        {
            return View(new User { UserId = userId });
        }

        [HttpPost]
        public IActionResult UnsafeJs(User model)
        {
            return RedirectToAction("UnsafeJs", new { userId = model.UserId });
        }
    }
}