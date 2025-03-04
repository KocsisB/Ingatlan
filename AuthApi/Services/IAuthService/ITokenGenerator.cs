using AuthApi.Models;

namespace AuthApi.Services.IAuthService
{
    public interface ITokenGenerator
    {
        string GenerateToken(ApplicationUser applicationUser, IEnumerable<string> role);
    }
}
