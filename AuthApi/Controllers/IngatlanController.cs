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
        public async Task<ActionResult<string>> Post([FromForm] CreateIngatlanDto ingatlanok)
        {
            string kepUrl = null;

            if (ingatlanok.Kep != null && ingatlanok.Kep.Length > 0)
            {
                var uploads = Path.Combine(Directory.GetCurrentDirectory(), "wwwroot/images");
                if (!Directory.Exists(uploads))
                {
                    Directory.CreateDirectory(uploads);
                }

                var fileName = Path.GetFileName(ingatlanok.Kep.FileName);
                var filePath = Path.Combine(uploads, fileName);
                using (var stream = new FileStream(filePath, FileMode.Create))
                {
                    await ingatlanok.Kep.CopyToAsync(stream);
                }
                kepUrl = $"/images/{fileName}";
            }

            var adatok = new Ingatlanok
            {
                Id = 0,
                Cim = ingatlanok.Cim,
                Alapterulet = ingatlanok.Alapterulet,
                SzobakSzama = ingatlanok.SzobakSzama,
                TelekMerete = ingatlanok.TelekMerete,
                EpitesVege = ingatlanok.EpitesVege,
                Allapot = ingatlanok.Allapot,
                KepUrl = kepUrl,
                Tipus = ingatlanok.Tipus,
                Varos = ingatlanok.Varos,
                Megye = ingatlanok.Megye,
                Ar = ingatlanok.Ar,
                Berelheto = ingatlanok.Berelheto,
                Eladható = ingatlanok.Eladható,
                UserId = ingatlanok.UserId
            };

            if (adatok != null)
            {
                await _context.Ingatlanoks.AddAsync(adatok);
                await _context.SaveChangesAsync();
                return Ok(new { Message = "A házat sikeresen feltöltötte!" });
            }
            return NotFound(new { Message = "Az adatok nem felelnek meg!" });
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
        public async Task<IActionResult> UpdateHouse(int id, EditIngatlanDto editIngatlanDto)
        {
            var existingHouse = await _context.Ingatlanoks.FirstOrDefaultAsync(x => x.Id == id);
            if (existingHouse == null)
            {
                return BadRequest();
            }
            existingHouse.Cim = editIngatlanDto.Cim;
            existingHouse.Alapterulet = editIngatlanDto.Alapterulet;
            existingHouse.SzobakSzama = editIngatlanDto.SzobakSzama;
            existingHouse.TelekMerete = editIngatlanDto.TelekMerete;
            existingHouse.EpitesVege = editIngatlanDto.EpitesVege;
            existingHouse.Allapot = editIngatlanDto.Allapot;
            existingHouse.Tipus = editIngatlanDto.Tipus;
            existingHouse.Varos = editIngatlanDto.Varos;
            existingHouse.Megye = editIngatlanDto.Megye;
            existingHouse.Ar = editIngatlanDto.Ar;
            existingHouse.Berelheto = editIngatlanDto.Berelheto;
            existingHouse.Eladható = editIngatlanDto.Eladható;

            _context.Ingatlanoks.Update(existingHouse);
            await _context.SaveChangesAsync();
            return Ok(new { Message = "Sikeres változtatás" });
        }
    }
}
