using DLB_backend.Models;

namespace DLB_backend.Services.IAuthService
{
    public interface ITokenGenerator
    {
        string GenerateToken(Felhasznalok applicationUser, IEnumerable<string> role);
    }
}

