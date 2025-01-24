using DLB_backend.Models;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace DLB_backend.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class VarosController : ControllerBase
    {
        private readonly DlbLakaskulcsContext _context;

        public VarosController(DlbLakaskulcsContext context)
        {
            _context = context;
        }

        [HttpGet("{id}")]
        public IActionResult Get(int id)
        {
            using var db = new DlbLakaskulcsContext();
            var varos = db.Telepuleseks.Find(id);
            if (varos == null)
            {
                return NotFound();
            }
            return Ok(varos);
        }
    }
}
