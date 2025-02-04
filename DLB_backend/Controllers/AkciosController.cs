using DLB_backend.Models;
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

    }
}
