using AuthApi.Datas;
using DLB_backend.Models;
using DLB_backend.Services.Dtos;
using DLB_backend.Services.IAuthService;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Identity.Data;
using Microsoft.EntityFrameworkCore;

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

        public async Task<object> AssignRole(string email, string roleName)
        {
            throw new NotImplementedException();
        }

        public async Task<object> Login(LoginIUserDto loginIUserDto)
        {
            throw new NotImplementedException();
        }

        public async Task<object> Register(CreateUserDto createUserDto)
        {
            var user = new Felhasznalok
            {
                UserName = createUserDto.UserName,
                Email = createUserDto.Email
            };

            var result = await userManager.CreateAsync(user, createUserDto.Password);
            if (result.Succeeded)
            {
                var userReturn = await _dbContext.applicationUsers.FirstOrDefaultAsync(user=>user.UserName == createUserDto.UserName);

                return new { result = userReturn, message = "Sikeres regisztráció." };
            }

            return new { result = "", message = result.Errors.FirstOrDefault().Description };
        }
    }
}
