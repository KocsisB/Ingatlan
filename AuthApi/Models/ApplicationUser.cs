using Microsoft.AspNetCore.Identity;

namespace AuthApi.Models
{
    public class ApplicationUser : IdentityUser
    {
        public string? Fullname { get; set; }
        public DateTime BirthDate { get; set; }
    }
}
