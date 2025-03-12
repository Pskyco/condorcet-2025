using System;
using System.ComponentModel.DataAnnotations;

namespace WebApplication.Models
{
    public class Comment
    {
        public Guid Id { get; set; }
        
        [Required]
        [StringLength(100)]
        public string Author { get; set; }
        
        [Required]
        public string Content { get; set; }
        
        public DateTime CreatedAt { get; set; }
    }
}