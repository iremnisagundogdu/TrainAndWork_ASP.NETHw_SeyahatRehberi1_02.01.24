using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using TravelTripProject.Models.Classes;


namespace TravelTripProject.Controllers
{
    public class DefaultController : Controller
    {
        DataContext db = new DataContext();
        // GET: Default
        public ActionResult Index()
        {
            var blogs = db.Blogs.ToList();
            return View(blogs);
        }

        public ActionResult About()
        {

            return View();
        }
        public PartialViewResult Partial()
        {
            var blogs = db.Blogs.Take(2).ToList();
            return PartialView(blogs);
        }
        public PartialViewResult Partial2()
        {
            var blogs = db.Blogs.Where(b => b.Id== 1).ToList();
            return PartialView(blogs);
        }
        public PartialViewResult Partial3()
        {
            var blogs = db.Blogs.Take(8).ToList();
            return PartialView(blogs);
        }
        public PartialViewResult Partial4()
        {
            var blogs = db.Blogs.Take(3).ToList();
            return PartialView(blogs);
        }
        public PartialViewResult Partial5()
        {
            var blogs = db.Blogs.Take(3).OrderByDescending(x=>x.Id).ToList();
            return PartialView(blogs);
        }
    }
}