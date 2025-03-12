using System.Collections.Generic;
using System.Linq;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using WebApplication.Data;
using WebApplication.Data.Entities;

namespace WebApplication.Controllers
{
    public class AccountController : Controller
    {
        private readonly ApplicationDbContext _dbContext;

        public AccountController(ApplicationDbContext dbContext)
        {
            _dbContext = dbContext;
        }

        public IActionResult Index()
        {
            return View();
        }

        public IActionResult MyBankAccountUnsafe(string id)
        {
            return View("MyBankAccount",
                _dbContext.Set<Account>().FromSqlRaw($"SELECT * FROM Account WHERE Id = '{id}'").ToList());
        }

        public IActionResult MyBankAccountSafe(int id)
        {
            return View("MyBankAccount", new List<Account>() { _dbContext.Find<Account>(id) });
        }

        public IActionResult MyBankAccountSafeStringEf(string id)
        {
            return View("MyBankAccount", new List<Account>() { _dbContext.Find<Account>(id) });
        }

        public IActionResult MyBankAccountSafeStringEfInterpolated(string id)
        {
            return View("MyBankAccount",
                _dbContext.Set<Account>().FromSqlInterpolated($"SELECT * FROM Account WHERE Id = '{id}'").ToList());
        }
    }
}