using System;
using System.Collections.Generic;

namespace dlb_lakaskulcs.Models;

public partial class Jogihatter
{
    public int Id { get; set; }

    public int? IngatlanId { get; set; }

    public string DokumentumTipus { get; set; } = null!;

    public DateTime? DokumentumDatum { get; set; }

    public string? DokumentumUrl { get; set; }

    public virtual Ingatlanok? Ingatlan { get; set; }
}
