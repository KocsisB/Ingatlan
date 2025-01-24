using System;
using System.Collections.Generic;
using System.Text.Json.Serialization;

namespace DLB_backend.Models;

public partial class Ingatlanok
{
    public int Id { get; set; }

    public string Cim { get; set; } = null!;

    public decimal Alapterulet { get; set; }

    public int SzobakSzama { get; set; }

    public decimal? TelekMerete { get; set; }

    public int? EpitesVege { get; set; }

    public string? Allapot { get; set; }

    public string? KepUrl { get; set; }

    public string? Tipus { get; set; }

    public string Varos { get; set; } = null!;

    public string Megye { get; set; } = null!;
    [JsonIgnore]
    public virtual ICollection<Jogihatter> Jogihatters { get; set; } = new List<Jogihatter>();
    [JsonIgnore]
    public virtual ICollection<Tulajdonosok> Tulajdonosoks { get; set; } = new List<Tulajdonosok>();
}
