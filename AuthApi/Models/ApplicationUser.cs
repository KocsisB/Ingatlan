using Microsoft.AspNetCore.Identity;

namespace AuthApi.Models
{
    public class ApplicationUser : IdentityUser
    {
        public string? Fullname { get; set; }
        public DateTime BirthDate { get; set; }
        public virtual ICollection<Ingatlanok> Ingatlanok { get; set; } = new List<Ingatlanok>();
    }
}
