using AuthApi.Models;
using AuthApi.Models.Dtos;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;

namespace AuthApi.Controllers
{
    [Route("ingatlan")]
    [ApiController]
    public class IngatlanController : ControllerBase
    {
        private readonly DlblakaskulcsContext _context;

        public IngatlanController(DlblakaskulcsContext context)
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
        public IActionResult GetId(int id)
        {
           
            var ingatlanId = _context.Ingatlanoks.Find(id);
            if (ingatlanId == null)
            {
                return NotFound();
            }
            return Ok(ingatlanId);
        }

        //[Authorize(Roles = "Admin")]
        [HttpPost]
        public async Task<ActionResult<string>> Post([FromBody] CreateIngatlanDto ingatlanok)
        {
            var adatok = new Ingatlanok
            {
                Id = 0,
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
                Berelheto =ingatlanok.Berelheto,
                Eladható = ingatlanok.Eladható,
                UserId = ingatlanok.UserId
            };


            if (adatok != null)
            {
                await _context.Ingatlanoks.AddAsync(adatok);
                await _context.SaveChangesAsync();
                return Ok(new { Message = "A házat sikeresen feltöltötte!" });
            }
            return NotFound(new { Message = "Az adtok nem felelnek meg!" });

        }

        //[Authorize(Roles = "Admin")]
        [HttpDelete]
        public async Task<ActionResult> DeleteById(int id)
        {
            var haztorles = await _context.Ingatlanoks.FirstOrDefaultAsync(haztorles => haztorles.Id == id);
            if (haztorles != null)
            {
                _context.Ingatlanoks.Remove(haztorles);
                await _context.SaveChangesAsync();
                return Ok(new { Message = "Sikeres tölrés" });
            }
            return NotFound(new { Message = "Nem található ilyen ház!" });
        }

        //[Authorize(Roles = "Admin")]
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
