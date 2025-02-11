using DLB_backend.Models;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;

namespace DLB_backend.Controllers
{
    [Route("api/Akciók")]
    [ApiController]
    public class AkciosController : ControllerBase
    {
        private readonly DlbLakaskulcsContext _context;

        public AkciosController(DlbLakaskulcsContext context)
        {
            _context = context;
        }

        [HttpGet]
        public async Task<ActionResult> Get()
        {
            var akciok = await _context.AkciosHazaks.ToListAsync();
            return Ok(akciok);
        }

        [HttpPost]
        public async Task<ActionResult<string>> Post([FromBody] AkciosHazak akcios)
        {
            var builder = new AkciosHazak
            {
                Cim = akcios.Cim,
                Alapterulet = akcios.Alapterulet,
                SzobakSzama = akcios.SzobakSzama,
                TelekMerete = akcios.TelekMerete,
                EpitesVege = akcios.EpitesVege,
                Allapot = akcios.Allapot,
                KepUrl = akcios.KepUrl,
                Tipus = akcios.Tipus,
                Varos = akcios.Varos,
                Megye = akcios.Megye,
                Ar = akcios.Ar
            };


            if (builder != null)
            {
                await _context.AkciosHazaks.AddAsync(builder);
                await _context.SaveChangesAsync();
                return Ok(new { Message = "A házat sikeresen feltöltötte!" });
            }
            return NotFound(new { Message = "Az adtok nem felelnek meg!" });
        }

        [HttpDelete]
        public async Task<ActionResult> DeleteById(int id)
        {
            var haztorles = await _context.AkciosHazaks.FirstOrDefaultAsync(haztorles => haztorles.Id == id);
            if (haztorles != null)
            {
                _context.AkciosHazaks.Remove(haztorles);
                await _context.SaveChangesAsync();
                return Ok(new { Message = "Sikeres tölrés" });
            }
            return NotFound(new { Message = "Nem található ilyen ház!" });
        }

        [HttpPut("{id}")]
        public async Task<IActionResult> UpdateHouse(int id, AkciosHazak akcios)
        {
            if (id != akcios.Id)
            {
                return BadRequest();
            }
            _context.Entry(akcios).State = EntityState.Modified;
            await _context.SaveChangesAsync();
            return Ok(new { Message = "Sikeres változtatás" });
        }
    }
}