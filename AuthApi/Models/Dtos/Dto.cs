namespace AuthApi.Models.Dtos
{
    public record CreateUserDto(string UserName, string Email, string Password, DateTime BirthDate, string PhoneNumber);

    public record LoginIUserDto(string UserName, string Password);

    public record AssignUserDto(string Email, string RoleName);

    public record CreateIngatlanDto(string Cim, decimal Alapterulet, int SzobakSzama, decimal? TelekMerete, int? EpitesVege, string? Allapot, string? KepUrl, string? Tipus, string Varos, string Megye, int Ar, bool Berelheto, bool Eladható, string UserId);


}
