using DLB_backend.Services.Dtos;

namespace DLB_backend.Services.IAuthService
{
    public interface IAuth
    {
        Task<object> Register(CreateUserDto createUserDto);
        Task<object> Login(LoginIUserDto loginIUserDto);
        Task<object> AssignRole(string email, string roleName);
    }
}
