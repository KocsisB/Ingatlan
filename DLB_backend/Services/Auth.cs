using AuthApi.Datas;
using AuthApi.Services;
using DLB_backend.Models;
using DLB_backend.Services.Dtos;
using DLB_backend.Services.IAuthService;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Identity.Data;
using Microsoft.EntityFrameworkCore;
using Microsoft.IdentityModel.Tokens;

namespace DLB_backend.Services
{
    public class Auth : IAuth
    {
        private readonly AppDbContext _dbContext;
        private readonly UserManager<Felhasznalok> userManager;
        private readonly RoleManager<IdentityRole> roleManager;

        private readonly ITokenGenerator tokenGenerator;

        public Auth(AppDbContext dbContext, UserManager<Felhasznalok> userManager, RoleManager<IdentityRole> roleManager, ITokenGenerator tokenGenerator)
        {
            _dbContext = dbContext;
            this.userManager = userManager;
            this.roleManager = roleManager;
            this.tokenGenerator = tokenGenerator;
        }

        public async Task<object> AssignRole(string email, string roleName)
        {
            var user = await _dbContext.applicationUsers.FirstOrDefaultAsync(user => user.NormalizedEmail == email.ToUpper());

            if (user != null)
            {
                if (!roleManager.RoleExistsAsync(roleName).GetAwaiter().GetResult())
                {
                    roleManager.CreateAsync(new IdentityRole(roleName)).GetAwaiter().GetResult();
                }

                await userManager.AddToRoleAsync(user, roleName);

                return new { result = user, message = "Sikeres hozzárendelés." };
            }

            return new { result = "", message = "Sikertelen hozzárendelés." };
        }

        public async Task<object> Login(LoginIUserDto loginUserDto)
        {
            var user = await _dbContext.applicationUsers.FirstOrDefaultAsync(user => user.NormalizedUserName == loginUserDto.UserName.ToUpper());

            bool isValid = await userManager.CheckPasswordAsync(user, loginUserDto.Password);

            if (isValid)
            {
                var roles = await userManager.GetRolesAsync(user);
                var jwtToken = tokenGenerator.GenerateToken(user, roles);

                return new { result = user, token = jwtToken };
            }

            return new { result = "", token = "" };

        }

        public async Task<object> Register(CreateUserDto createUserDto)
        {
            var user = new Felhasznalok
            {
                UserName = createUserDto.UserName,
                Email = createUserDto.Email,
                PhoneNumber = createUserDto.PhoneNumber
            };

            var res = await userManager.CreateAsync(user, createUserDto.Password);

            if (res.Succeeded)
            {
                var existingUser = await _dbContext.applicationUsers.FirstOrDefaultAsync(user => user.UserName == createUserDto.UserName);

                return new { result = new { user.UserName, user.Email }, message = "Sikeres regisztráció." };
            }

            return new { result = "", message = res.Errors.FirstOrDefault().Description };
        }
    }
}
