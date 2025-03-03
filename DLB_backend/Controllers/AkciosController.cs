using DLB_backend.Models;
using Microsoft.AspNetCore.Authorization;
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


        [HttpGet("{id}")]
        public IActionResult Get(int id)
        {
            using var db = new DlbLakaskulcsContext();
            var akciosId = db.AkciosHazaks.Find(id);
            if (akciosId == null)
            {
                return NotFound();
            }
            return Ok(akciosId);
        }

        [Authorize(Roles = "Admin")]
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

        [Authorize(Roles = "Admin")]
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

        [Authorize(Roles = "Admin")]
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