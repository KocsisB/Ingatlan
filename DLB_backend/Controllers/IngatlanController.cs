using DLB_backend.Models;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;

namespace DLB_backend.Controllers
{
    [Route("api/Ingatlanok")]
    [ApiController]
    public class IngatlanController : ControllerBase
    {
        private readonly DlbLakaskulcsContext _context;

        public IngatlanController(DlbLakaskulcsContext context)
        {
            _context = context;
        }

        [HttpGet]
        public async Task<ActionResult> Get()
        {
            var varosok = await _context.Ingatlanoks.ToListAsync();
            if (varosok != null)
            {
                return Ok(varosok);
            }
            return BadRequest();
        }


        [HttpGet("{id}")]
        public IActionResult Get(int id)
        {
            using var db = new DlbLakaskulcsContext();
            var ingatlanId = db.Ingatlanoks.Find(id);
            if (ingatlanId == null)
            {
                return NotFound();
            }
            return Ok(ingatlanId);
        }

        [Authorize(Roles = "Admin")]
        [HttpPost]
        public async Task<ActionResult<string>> Post([FromBody]Ingatlanok ingatlanok)
        {
            var builder = new Ingatlanok
            {
                Cim = ingatlanok.Cim,
                Alapterulet = ingatlanok.Alapterulet,
                SzobakSzama = ingatlanok.SzobakSzama,
                TelekMerete = ingatlanok.TelekMerete,
                EpitesVege = ingatlanok.EpitesVege,
                Allapot = ingatlanok.Allapot,
                KepUrl = ingatlanok.KepUrl,
                Tipus = ingatlanok.Tipus,
                Varos = ingatlanok.Varos,
                Megye = ingatlanok.Megye,
                Ar = ingatlanok.Ar,
            };


            if (builder != null)
            {
                await _context.Ingatlanoks.AddAsync(ingatlanok);
                await _context.SaveChangesAsync();
                return Ok(new {Message = "A házat sikeresen feltöltötte!"});
            }
            return NotFound(new {Message = "Az adtok nem felelnek meg!"});

        }

        [Authorize(Roles = "Admin")]
        [HttpDelete]
        public async Task<ActionResult> DeleteById(int id)
        {
            var haztorles = await _context.Ingatlanoks.FirstOrDefaultAsync(haztorles => haztorles.Id == id);
            if (haztorles != null)
            {
                _context.Ingatlanoks.Remove(haztorles);
                await _context.SaveChangesAsync();
                return Ok(new {Message = "Sikeres tölrés"});
            }
            return NotFound(new {Message = "Nem található ilyen ház!"});
        }

        [Authorize(Roles = "Admin")]
        [HttpPut("{id}")]
        public async Task<IActionResult> UpdateHouse(int id, Ingatlanok ingatlanok)
        {
            if (id != ingatlanok.Id)
            {
                return BadRequest();
            }
            _context.Entry(ingatlanok).State = EntityState.Modified;
            await _context.SaveChangesAsync();
            return Ok(new { Message = "Sikeres változtatás" });
        }

    }
}