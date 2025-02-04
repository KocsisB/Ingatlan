using DLB_backend.Models;
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

       /* [HttpPost]
        public async Task<ActionResult> Post([FromBody]Ingatlanok ingatlanok)
        {
            using var hazak = await new 
            Ingatlanok = ingatlanok.Id;
            return Ok(hazak);
        }*/

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
            return NotFound(new {Message = "Nincs ilyen ház"});
        }
    }
}