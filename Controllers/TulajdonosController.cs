using dlblakaskulcs.Models;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;

namespace DLB_backend.Controllers
{
    [Route("api/Tulajdonos")]
    [ApiController]
    public class TulajdonosokController : ControllerBase
    {
        private readonly DlbLakaskulcsContext _context;
        // asd
        //debug
        public TulajdonosokController(DlbLakaskulcsContext context)
        {
            _context = context;
        }

        [HttpGet]
        public async Task<ActionResult> Get()
        {
            var szemelyek = await _context.Tulajdonosoks.ToListAsync();
            if (szemelyek != null)
            {
                return Ok(szemelyek);
            }
            return BadRequest();
        }
    }
}