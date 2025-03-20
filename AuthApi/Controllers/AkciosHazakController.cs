using AuthApi.Models;
using AuthApi.Models.Dtos;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;

namespace AuthApi.Controllers
{
    [Route("akcioshazak")]
    [ApiController]
    public class AkciosHazakController : ControllerBase
    {
        private readonly DlblakaskulcsContext _context;

        public AkciosHazakController(DlblakaskulcsContext context)
        {
            _context = context;
        }

        [HttpGet]
        public async Task<ActionResult> Get()
        {
            var akciok = await _context.Akcioshazaks.ToListAsync();
            return Ok(akciok);
        }


        [HttpGet("{id}")]
        public IActionResult GetId(int id)
        {
            var akciosId = _context.Akcioshazaks.Find(id);
            if (akciosId == null)
            {
                return NotFound();
            }
            return Ok(akciosId);
        }

        //[Authorize(Roles = "Admin")]
        [HttpPost]
        public async Task<ActionResult<string>> Post([FromBody] Akcioshazak akcios)
        {
            var adatok = new Akcioshazak
            {
                AkciosAr = akcios.AkciosAr,
                IngatlanId = akcios.IngatlanId
            };


            if (adatok != null)
            {
                await _context.Akcioshazaks.AddAsync(adatok);
                await _context.SaveChangesAsync();
                return Ok(new { Message = "A házat sikeresen feltöltötte!" });
            }
            return NotFound(new { Message = "Az adtok nem felelnek meg!" });
        }

        //[Authorize(Roles = "Admin")]
        [HttpDelete]
        public async Task<ActionResult> DeleteById(int id)
        {
            var haztorles = await _context.Akcioshazaks.FirstOrDefaultAsync(haztorles => haztorles.Id == id);
            if (haztorles != null)
            {
                _context.Akcioshazaks.Remove(haztorles);
                await _context.SaveChangesAsync();
                return Ok(new { Message = "Sikeres tölrés" });
            }
            return NotFound(new { Message = "Nem található ilyen ház!" });
        }

        //[Authorize(Roles = "Admin")]
        [HttpPut("{id}")]
        public async Task<IActionResult> UpdateHouse(int id, EditAkciosDto editAkciosDto)
        {
            var existingSalesHouse = await _context.Akcioshazaks.FirstOrDefaultAsync(x => x.Id == id);
            if (existingSalesHouse == null)
            {
                return BadRequest();
            }
            existingSalesHouse.AkciosAr = editAkciosDto.AkciosAr;
            _context.Akcioshazaks.Update(existingSalesHouse);
            await _context.SaveChangesAsync();
            return Ok(new { Message = "Sikeres változtatás" });
        }
    }
}
