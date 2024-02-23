using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using TravelTripProject.Models.Classes;

namespace TravelTripProject.Controllers
{
    public class BlogController : Controller
    {
        DataContext db = new DataContext();
        BlogComment blogComment = new BlogComment();

        // GET: Blog
        public ActionResult Index()
        {
            //var blogs = db.Blogs.ToList();
            blogComment.blog = db.Blogs.ToList() ?? new List<Blog>();
            blogComment.blog2 = db.Blogs.Take(3).ToList() ?? new List<Blog>();
            return View(blogComment);
        }


        public ActionResult BlogDetails(int id)
        {

            // var blog = db.Blogs.Where(x => x.Id == id).ToList();
            blogComment.blog = db.Blogs.Where(x => x.Id == id).ToList();
            blogComment.comment = db.Commentses.Where(x => x.BlogId == id).ToList();
            return View(blogComment);
        }
        [HttpGet]
        public PartialViewResult Comment(int id)
        {
            ViewBag.deger = id;
            return PartialView();
        }

        [HttpPost]
        public PartialViewResult Comment(Comments comment)
        {
            db.Commentses.Add(comment);
            db.SaveChanges();
            return PartialView();
        }
    }
}