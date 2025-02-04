﻿using DLB_backend.Models;
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
    }
}