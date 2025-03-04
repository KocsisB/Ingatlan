using AuthApi.Models;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;

namespace AuthApi.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class TulajdonosController : ControllerBase
    {
        private readonly AppDbContext _context;

        public TulajdonosController(AppDbContext context)
        {
            _context = context;
        }

        [HttpGet]
        public async Task<ActionResult> Get()
        {
            var tulajok = await _context.tulajdonosoks.ToListAsync();
            if (tulajok != null)
            {
                return Ok(tulajok);
            }
            return BadRequest();
        }


        [HttpGet("{id}")]
        public IActionResult GetId(int id)
        {
            var TulajId = _context.tulajdonosoks.Find(id);
            if (TulajId == null)
            {
                return NotFound();
            }
            return Ok(TulajId);
        }

        //[Authorize(Roles = "Admin")]
        [HttpPost]
        public async Task<ActionResult<string>> Post([FromBody] Tulajdonosok tulajdonosok)
        {
            var adatok = new Tulajdonosok
            {
                Id = tulajdonosok.Id,
                IngatlanId = tulajdonosok.IngatlanId,
                Nev = tulajdonosok.Nev,
                Email = tulajdonosok.Email,
                Telefon = tulajdonosok?.Telefon
            };


            if (adatok != null)
            {
                await _context.tulajdonosoks.AddAsync(adatok);
                await _context.SaveChangesAsync();
                return Ok(new { Message = "A tulajdonost sikeresen feltöltötte!" });
            }
            return NotFound(new { Message = "Az adtok nem felelnek meg!" });

        }

        
        //[Authorize(Roles = "Admin")]
        [HttpDelete]
        public async Task<ActionResult> DeleteById(int id)
        {
            var tulajtorles = await _context.tulajdonosoks.FirstOrDefaultAsync(tulajtorles => tulajtorles.Id == id);
            if (tulajtorles != null)
            {
                _context.tulajdonosoks.Remove(tulajtorles);
                await _context.SaveChangesAsync();
                return Ok(new { Message = "Sikeres tölrés" });
            }
            return NotFound(new { Message = "Nem található ilyen tulajdonos!" });
        }

        //[Authorize(Roles = "Admin")]
        [HttpPut("{id}")]
        public async Task<IActionResult> UpdateHouse(int id, Tulajdonosok tulajdonosok)
        {
            if (id != tulajdonosok.Id)
            {
                return BadRequest();
            }
            _context.Entry(tulajdonosok).State = EntityState.Modified;
            await _context.SaveChangesAsync();
            return Ok(new { Message = "Sikeres változtatás" });
        }
    }
}
