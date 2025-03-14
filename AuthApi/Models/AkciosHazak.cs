using System;
using System.Collections.Generic;

namespace AuthApi.Models;

public partial class Akcioshazak
{
    public int Id { get; set; }

    public long AkciosAr { get; set; }

    public int IngatlanId { get; set; }

    public virtual Ingatlanok Ingatlan { get; set; } = null!;
}
