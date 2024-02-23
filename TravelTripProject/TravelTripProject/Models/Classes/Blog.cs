using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace TravelTripProject.Models.Classes
{
    public class Blog
    {
        [Key]
        public int Id { get; set; }
        public string BlogTitle { get; set; }
        public DateTime? BlogDate { get; set; }
        public string BlogDescription { get; set; }
        public string BlogImage { get; set; }
        public ICollection<Comments> Commentses { get; set; }
    }
}