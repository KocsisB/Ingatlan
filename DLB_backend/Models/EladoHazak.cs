using System;
using System.Collections.Generic;

namespace DLB_backend.Models;

public partial class EladoHazak
{
    public int Id { get; set; }

    public string Cim { get; set; } = null!;

    public decimal Alapterulet { get; set; }

    public int SzobakSzama { get; set; }

    public decimal? TelekMerete { get; set; }

    public int? EpitesVege { get; set; }

    public string? Allapot { get; set; }

    public string? KepUrl { get; set; }

    public string Varos { get; set; } = null!;

    public string Megye { get; set; } = null!;

    public int Ar { get; set; }
}
