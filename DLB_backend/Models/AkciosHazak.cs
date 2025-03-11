using System;
using System.Collections.Generic;

namespace DLB_backend.Models;

public partial class AkciosHazak
{
    public int Id { get; set; }

    public string Cim { get; set; } = null!;

    public int Alapterulet { get; set; }

    public int SzobakSzama { get; set; }

    public int? TelekMerete { get; set; }

    public int? EpitesVege { get; set; }

    public string? Allapot { get; set; }

    public string? KepUrl { get; set; }

    public string? Tipus { get; set; }

    public string? Varos { get; set; }

    public string? Megye { get; set; }

    public long Ar { get; set; }
}
