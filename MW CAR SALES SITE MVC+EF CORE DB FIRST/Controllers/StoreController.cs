using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Logging;
using MW_CAR_SALES_SITE_MVC_EF_CORE_DB_FIRST.Data;
using MW_CAR_SALES_SITE_MVC_EF_CORE_DB_FIRST.Models;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Threading.Tasks;

namespace MW_CAR_SALES_SITE_MVC_EF_CORE_DB_FIRST.Controllers
{
    public class StoreController : Controller
    {
        private readonly ILogger<StoreController> _logger;
        private readonly CarSalesContext _context;

        public StoreController(ILogger<StoreController> logger, CarSalesContext context)
        {
            _logger = logger;
            _context = context;
        }

        [HttpGet]
        public async Task<IActionResult> Index()
        {
            return View(await _context.Ads.ToListAsync<Ad>());
        }

        [HttpGet]
        public IActionResult Add()
        {
            return View(new Ad());
        }

        [HttpPost]
        public IActionResult Add(Ad ad)
        {
            _context.Ads.Add(ad);
            _context.SaveChanges();
            return RedirectToAction("Index");
        }

        [HttpGet]
        public IActionResult Details(Ad ad)
        {
            return View(ad);
        }

        //[ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        //public IActionResult Error()
        //{
        //    return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        //}
    }
}
