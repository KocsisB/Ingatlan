using DLB_backend.Models;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

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
    }
}
