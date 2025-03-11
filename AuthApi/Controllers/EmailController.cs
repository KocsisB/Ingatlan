using AuthApi.Services.IEmail;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace AuthApi.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class EmailController : ControllerBase
    {
        private readonly IEmailInterface emailInterface;

        public EmailController(IEmailInterface emailInterface)
        {
            this.emailInterface = emailInterface;
        }

        [HttpPost]
        public ActionResult PostSendMail(string To, string Subject, string Body)
        {
            emailInterface.SendEmail(To, Subject, Body);
            return Ok("Sikeres email küldés.");
        }
    }
}
