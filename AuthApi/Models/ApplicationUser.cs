using Microsoft.AspNetCore.Identity;
using System.Text.Json.Serialization;

namespace AuthApi.Models
{
    public class ApplicationUser : IdentityUser
    {
        public string? Fullname { get; set; }
        public DateTime BirthDate { get; set; }
        public string? kepUrl { get; set; }
    }
}
