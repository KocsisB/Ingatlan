namespace AuthApi.Models.Dtos
{
    public class EmailDto
    {
        public record EmailsDto (string To, string Subject, string Body);
    }
}
