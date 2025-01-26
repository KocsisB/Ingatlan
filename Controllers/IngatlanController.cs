using dlblakaskulcs.Models;
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
            try
            {
                var varosok = await _context.Ingatlanoks.ToListAsync();

                if (varosok == null || varosok.Count == 0)
                {
                    return NotFound("Nem találhatóak ingatlanok az adatbázisban.");
                }

                return Ok(varosok);
            }
            catch (Exception ex)
            {
                return StatusCode(StatusCodes.Status500InternalServerError, $"Hiba történt: {ex.Message}");
            }
        }


    }
}