using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using TravelTripProject.Models.Classes;
namespace TravelTripProject.Controllers
{
    public class AdminController : Controller
    {
        DataContext db = new DataContext();
        [Authorize]
        // GET: Admin
        public ActionResult Index()
        {
            var blogs = db.Blogs.ToList();
            return View(blogs);
        }

        [HttpGet]
        public ActionResult AddNewBlog()
        {
            return View();
        }

        [HttpPost]
        public ActionResult AddNewBlog(Blog blog)
        {
            db.Blogs.Add(blog);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        public ActionResult DeleteBlog(int id)
        {
            var blog = db.Blogs.Find(id);
            db.Blogs.Remove(blog);
            db.SaveChanges();
            return RedirectToAction("Index");
        }
        public ActionResult GetBlogById(int id)
        {
            var blog = db.Blogs.Find(id);
          
            return View("GetBlogById", blog);
        }

        public ActionResult UpdateBlog(Blog blog)
        {
            var updateBlog = db.Blogs.Find(blog.Id);
            updateBlog.BlogTitle = blog.BlogTitle;
            updateBlog.BlogDescription = blog.BlogDescription;
            updateBlog.BlogDate = blog.BlogDate;
            updateBlog.BlogImage = blog.BlogImage;
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        public ActionResult CommentList()
        {
            var comments = db.Commentses.ToList();
            return View(comments);
        }


        public ActionResult DeleteComment(int id)
        {
            var comment = db.Commentses.Find(id);
            db.Commentses.Remove(comment);
            db.SaveChanges();
            return RedirectToAction("CommentList");
        }

        public ActionResult GetComment(int id)
        {
            var comment = db.Commentses.Find(id);

            return View("GetComment", comment);
        }
        public ActionResult UpdateComment(Comments comment)
        {
            var updateComment = db.Commentses.Find(comment.Id);
            updateComment.UserName = comment.UserName;
            updateComment.CommentContent = comment.CommentContent;
            updateComment.Mail = comment.Mail;  
            
            db.SaveChanges();
            return RedirectToAction("CommentList");
        }

    }
}