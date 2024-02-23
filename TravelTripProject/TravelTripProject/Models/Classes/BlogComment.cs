using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


namespace TravelTripProject.Models.Classes
{
    public class BlogComment
    {
        public IEnumerable<Blog> blog { get; set; } = new List<Blog>();
        public IEnumerable<Comments> comment { get; set; } = new List<Comments>();
        public IEnumerable<Blog> blog2 { get; set; } = new List<Blog>();
    }

}