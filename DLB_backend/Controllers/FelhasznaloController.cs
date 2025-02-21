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

        [HttpGet("{id}")]
        public IActionResult Get(int id)
        {
            using var db = new DlbLakaskulcsContext();
            var felhasz = db.Felhasznaloks.Find(id);
            if (felhasz == null)
            {
                return NotFound();
            }
            return Ok(felhasz);
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

        [HttpDelete]
        public async Task<ActionResult> DeleteById(int id)
        {
            var feltorles = await _context.Felhasznaloks.FirstOrDefaultAsync(feltorles => feltorles.Id == id);
            if (feltorles != null)
            {
                _context.Felhasznaloks.Remove(feltorles);
                await _context.SaveChangesAsync();
                return Ok(new { Message = "Sikeres tölrés" });
            }
            return NotFound(new { Message = "Nem található ilyen ház!" });
        }

        [HttpPut("{id}")]
        public async Task<IActionResult> UpdateUser(int id, Felhasznalok felhasznalok)
        {
            if (id != felhasznalok.Id)
            {
                return BadRequest();
            }
            _context.Entry(felhasznalok).State = EntityState.Modified;
            await _context.SaveChangesAsync();
            return Ok(new { Message = "Sikeres változtatás" });
        }

    }
}
