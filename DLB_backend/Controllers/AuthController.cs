﻿using DLB_backend.Services.Dtos;
using DLB_backend.Services.IAuthService;
using Microsoft.AspNetCore.Mvc;

namespace AuthApi.Controllers
{
    [Route("api/auth")]
    [ApiController]
    public class AuthController : ControllerBase
    {
        private readonly IAuth auth;

        public AuthController(IAuth auth)
        {
            this.auth = auth;
        }

        [HttpPost("Register")]
        public async Task<ActionResult> AddNewUser(CreateUserDto createUserDto)
        {
            var res = await auth.Register(createUserDto);

            if (res != null)
            {
                return StatusCode(201, res);
            }

            return BadRequest(res);

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
    }
}