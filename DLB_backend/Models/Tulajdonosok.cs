using System;
using System.Collections.Generic;
using System.Text.Json.Serialization;

namespace DLB_backend.Models;

public partial class Tulajdonosok
{
    public int Id { get; set; }

    public int? IngatlanId { get; set; }

    public string Nev { get; set; } = null!;

    public string? Email { get; set; }

    public string? Telefon { get; set; }
    [JsonIgnore]
    public virtual Ingatlanok? Ingatlan { get; set; }
}
