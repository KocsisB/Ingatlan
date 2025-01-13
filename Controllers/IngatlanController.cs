using dlb_lakaskulcs.Models;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;

namespace dlb_lakaskulcs.Controllers
{
    [Route("api/[controller]")]
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
            var varosok = await _context.Tulajdonosoks.ToListAsync();
            if (varosok != null)
            {
                return Ok(varosok);
            }
            return BadRequest();
        }

       
    }

}
