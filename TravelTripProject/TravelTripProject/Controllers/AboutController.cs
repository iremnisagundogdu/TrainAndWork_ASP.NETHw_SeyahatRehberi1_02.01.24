using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using TravelTripProject.Models.Classes;

namespace TravelTripProject.Controllers
{
    public class AboutController : Controller
    {
        // GET: About

        DataContext db = new DataContext();
        public ActionResult Index()
        {
            var values = db.Abouts.ToList();
            return View(values);
        }
    }
}