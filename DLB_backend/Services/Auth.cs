using AuthApi.Datas;
using DLB_backend.Models;
using DLB_backend.Services.Dtos;
using DLB_backend.Services.IAuthService;
using Microsoft.AspNetCore.Identity;

namespace DLB_backend.Services
{
    public class Auth : IAuth
    {
        private readonly AppDbContext _dbContext;
        private readonly UserManager<Felhasznalok> userManager;

        public Auth(AppDbContext dbContext, UserManager<Felhasznalok> userManager)
        {
            _dbContext = dbContext;
            this.userManager = userManager;
        }

        public Task<object> AssignRole(string email, string roleName)
        {
            throw new NotImplementedException();
        }

        public Task<object> Login(LoginIUserDto loginIUserDto)
        {
            throw new NotImplementedException();
        }

        public Task<object> Register(CreateUserDto createUserDto)
        {
            throw new NotImplementedException();
        }
    }
}
