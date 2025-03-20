using AuthApi.Models;
using AuthApi.Models.Dtos;
using AuthApi.Services.IAuthService;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using MySqlX.XDevAPI.Common;

namespace AuthApi.Controllers
{
    [Route("auth")]
    [ApiController]
    public class AuthController : ControllerBase
    {
        private readonly IAuth auth;
        private readonly DlblakaskulcsContext _context;

        public AuthController(IAuth auth, DlblakaskulcsContext context)
        {
            this.auth = auth;
            _context = context;
        }

        [HttpPost("Register")]
        public async Task<ActionResult> AddNewUser(CreateUserDto createUserDto)
        {
            var res = await auth.Register(createUserDto);

            if (res != null)
            {
                return StatusCode(201, res);
            }
            return BadRequest();

        }

        [HttpPost("login")]
        public async Task<ActionResult> LoginUser(LoginIUserDto loginIUserDto)
        {
            var res = await auth.Login(loginIUserDto);

            if (res != null)
            {
                return Ok(res);
            }
            return BadRequest(res);
        }

        [HttpPost("AssignRole")]
        public async Task<ActionResult> AssignRole(AssignUserDto assignUserDto)
        {
            var res = await auth.AssignRole(assignUserDto.Email, assignUserDto.RoleName);

            if (res != null)
            {
                return Ok(res);
            }
            return BadRequest(res);
        }

        [HttpGet]

        public async Task<ActionResult> GetAllUserController()
        {
            var res = await auth.GetAllUSer();

            if (res != null)
            {
                return Ok(new { result = res, message = "Sikeres lekérdezés" });
            }

            return BadRequest(new {result = res, message = "Sikertelen  lekérdezés"});
        }


        [HttpGet("{id}")]

        public async Task<ActionResult> GetById(string id)
        {
            var res = await auth.GetById(id);

            if (res != null)
            {
                return Ok(new { result = res, message = "Sikeres lekérdezés" });
            }

            return BadRequest(new { result = res, message = "Sikertelen  lekérdezés" });
        }
        [HttpPut("{id}")]
        public async Task<IActionResult> EditUser(string id, EditUserDto editUserDto)
        {
            var existingUser = await _context.Aspnetusers.FirstOrDefaultAsync(x => x.Id == id);
            if (existingUser == null)
            {
                return BadRequest(new {Message = "Nem található ilyen id" });
            }
            existingUser.Fullname = existingUser.Fullname;
            existingUser.UserName = existingUser.UserName;
            existingUser.Email = existingUser.Email;
            existingUser.PhoneNumber = existingUser.PhoneNumber;
            existingUser.BirthDate = existingUser.BirthDate;
            _context.Aspnetusers.Update(existingUser);
            await _context.SaveChangesAsync();
            return Ok(new { Message = "Sikeres módosítás!" });
        }

        [HttpDelete("{id}")]
        public async Task<IActionResult> DeleteUser(string id)
        {
            var existingUserDelete = await _context.Aspnetusers.FirstOrDefaultAsync(x => x.Id == id);
            if (existingUserDelete!= null)
            {
                _context.Aspnetusers.Remove(existingUserDelete);
                await _context.SaveChangesAsync();
            }
            return Ok(new { Message = "Sikeres törlés!" });
        }
    }
}
