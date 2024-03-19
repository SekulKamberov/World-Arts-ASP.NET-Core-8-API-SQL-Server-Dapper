using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WorldArts.Data.Models
{
    public class WorldArts
    {
        public int Id { get; set; }
        public string? Author { get; set; }
        public string? Country { get; set; }
        public string? Link { get; set; }
        public string? Category { get; set; }   
        public string? ImageLink { get; set; } 
        public string? Title { get; set; }
        public int Year { get; set; }
        public double Price { get; set; }
    }
}
