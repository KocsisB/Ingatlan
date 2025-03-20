namespace AuthApi.Models.Dtos
{
    public record CreateUserDto(string Fullname, string UserName, string Email, string Password, DateTime BirthDate, string PhoneNumber);

    public record LoginIUserDto(string UserName, string Password);

    public record EditUserDto(string Fullname, string UserName, string Email, string Password, DateTime BirthDate, string PhoneNumber, IFormFile Kep);

    public record UploadProfImg(IFormFile Kep);

    public record AssignUserDto(string Email, string RoleName);

    public record CreateIngatlanDto(string Cim, decimal Alapterulet, int SzobakSzama, decimal? TelekMerete, int? EpitesVege, string? Allapot, string? Tipus, string Varos, string Megye, int Ar, bool Berelheto, bool Eladható, string UserId, IFormFile Kep);

    public record EditIngatlanDto(string Cim, decimal Alapterulet, int SzobakSzama, decimal? TelekMerete, int? EpitesVege, string? Allapot, string? Tipus, string Varos, string Megye, int Ar, bool Berelheto, bool Eladható);

    public record EditAkciosDto(int AkciosAr);

}
