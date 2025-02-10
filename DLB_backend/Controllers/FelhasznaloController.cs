using DLB_backend.Models;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;

namespace DLB_backend.Controllers
{
    [Route("api/Felhasznalok")]
    [ApiController]
    public class FelhasznaloController : ControllerBase
    {
        private readonly DlbLakaskulcsContext _context;

        public FelhasznaloController(DlbLakaskulcsContext context)
        {
            _context = context;
        }

        [HttpPost]
        public async Task<ActionResult<string>> PostReg([FromBody]Felhasznalok felhasznalok)
        {
            var reg = new Felhasznalok
            {
                Nev = felhasznalok.Nev,
                Email = felhasznalok.Email,
                Jelszo = felhasznalok.Jelszo
            };

            if (reg != null) 
            { 
                await _context.Felhasznaloks.AddAsync(felhasznalok);
                await _context.SaveChangesAsync();
                return Ok(new {Message = "Sikeres Regisztráció"});
            }

            return BadRequest(new {Message = "Nem megfelelőek az adatok"});
        }

        [HttpGet]
        public async Task<ActionResult> Get()
        {
            var felhasznalok = await _context.Felhasznaloks.ToListAsync();
            if (felhasznalok != null)
            {
                return Ok(felhasznalok);
            }
            return NotFound(new { Message = "Nincsenek felhasználók." });
        }
    }
}
